import 'package:dartz/dartz.dart';

import '../../../infra/validator/failure.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/i_content_repository.dart';
import '../datasource/content_datasource.dart';

class ContentRepository implements IContentRepository {
  final IContentDatasource _datasource;

  ContentRepository(this._datasource);

  @override
  Future<Either<Failure, List<PokemonEntity>>> getPokemons({required int limit, required int offset}) async {
    try {
      final result = await _datasource.getPokemons(limit: limit, offset: offset);
      return Right(result);
    } catch (_) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, PokemonEntity>> getPokemonByName({required String name}) async {
    try {
      final result = await _datasource.getPokemonByName(name: name);
      return Right(result);
    } catch (_) {
      return Left(Failure());
    }
  }
}
