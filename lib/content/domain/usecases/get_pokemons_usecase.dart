import 'package:dartz/dartz.dart';

import '../../../infra/infra.dart';
import '../entities/entities.dart';
import '../repositories/i_content_repository.dart';

abstract class IGetPokemonsUsecase {
  Future<Either<Failure, List<PokemonEntity>>> call({int limit = 12, int offset = 0});
}

class GetPokemonUsecase implements IGetPokemonsUsecase {
  final IContentRepository _contentRepository;

  GetPokemonUsecase(this._contentRepository);

  @override
  Future<Either<Failure, List<PokemonEntity>>> call({int limit = 12, int offset = 0}) async {
    return _contentRepository.getPokemons(limit: limit, offset: offset);
  }
}
