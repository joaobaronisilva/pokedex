import 'package:dartz/dartz.dart';

import '../../../infra/infra.dart';
import '../entities/entities.dart';

abstract class IContentRepository {
  Future<Either<Failure, List<PokemonEntity>>> getPokemons({required int limit, required int offset});
  Future<Either<Failure, PokemonEntity>> getPokemonByName({required String name});
}
