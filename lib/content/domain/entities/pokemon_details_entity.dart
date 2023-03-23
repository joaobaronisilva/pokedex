import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_details_entity.freezed.dart';

@freezed
class PokemonDetailsEntity with _$PokemonDetailsEntity {
  factory PokemonDetailsEntity({
    required String imageUrl,
    required List<String> types,
    required List<String> abilities,
  }) = _PokemonDetailsEntity;
}
