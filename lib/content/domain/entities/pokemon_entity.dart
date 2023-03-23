import 'package:freezed_annotation/freezed_annotation.dart';

import 'pokemon_details_entity.dart';

part 'pokemon_entity.freezed.dart';

@freezed
class PokemonEntity with _$PokemonEntity {
  factory PokemonEntity({
    required String name,
    PokemonDetailsEntity? details,
  }) = _PokemonEntity;
}
