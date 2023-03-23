import 'package:dartz/dartz.dart';

import '../../../infra/infra.dart';
import '../../content.dart';
import '../entities/entities.dart';

abstract class IGetPokemonByNameUsecase {
  Future<Either<Failure, PokemonEntity>> call({required String name});
}

class GetPokemonByNameUsecase implements IGetPokemonByNameUsecase {
  final IContentRepository _repository;

  GetPokemonByNameUsecase(this._repository);

  @override
  Future<Either<Failure, PokemonEntity>> call({required String name}) async {
    return _repository.getPokemonByName(name: name);
  }
}
