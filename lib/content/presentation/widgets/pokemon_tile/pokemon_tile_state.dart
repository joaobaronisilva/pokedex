import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infra/mvvm/mvvm.dart';
import '../../../domain/entities/entities.dart';

part 'pokemon_tile_state.freezed.dart';

@freezed
class PokemonTileState extends ViewModelState with _$PokemonTileState {
  /// Initial state
  factory PokemonTileState.initial() => const PokemonTileState();

  /// Creates a [PokemonTileState]
  const factory PokemonTileState({
    String? errorMessage,
    PokemonEntity? pokemon,
    @Default(false) isLoading,
  }) = _PokemonTileState;
}
