import '../../../../infra/mvvm/mvvm.dart';
import '../../../content.dart';
import '../../../domain/entities/entities.dart';
import 'pokemon_tile_state.dart';

class PokemonTileViewModel extends ViewModel<PokemonTileState> {
  final IGetPokemonByNameUsecase _iGetPokemonByNameUsecase;

  PokemonTileViewModel(this._iGetPokemonByNameUsecase) : super(PokemonTileState.initial());

  void init(PokemonEntity pokemon) async {
    emit(state.copyWith(pokemon: pokemon));
    final result = await _iGetPokemonByNameUsecase(name: pokemon.name);
    result.fold((l) => null, (r) => emit(state.copyWith(pokemon: r)));
  }
}
