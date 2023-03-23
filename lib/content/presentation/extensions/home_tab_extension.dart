import '../enums/home_tab_enum.dart';

extension HomeTabExtension on HomeTabEnum {
  String get title {
    switch (this) {
      case HomeTabEnum.pokemons:
        return 'Pokemons';
      // case HomeTabEnum.customPokemons:
      //   return 'Custom Pokemons';
    }
  }
}
