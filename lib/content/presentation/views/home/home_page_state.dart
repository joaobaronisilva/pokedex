import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../infra/mvvm/mvvm.dart';
import '../../../domain/entities/entities.dart';
import '../../enums/home_tab_enum.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState extends ViewModelState with _$HomePageState {
  /// Initial state
  factory HomePageState.initial() => const HomePageState();

  /// Creates a [HomePageState]
  const factory HomePageState({
    String? errorMessage,
    @Default(HomeTabEnum.pokemons) HomeTabEnum homeTab,
    @Default([]) List<PokemonEntity> items,
    @Default(true) bool isLoading,
  }) = _HomePageState;
}
