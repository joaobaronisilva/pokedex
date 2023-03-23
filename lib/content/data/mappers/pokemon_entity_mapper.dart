import '../../domain/entities/entities.dart';

abstract class PokemonEntityMapper {
  static PokemonEntity fromJson(Map<String, dynamic> json) {
    final bool hasDetails = json['abilities'] != null;
    return PokemonEntity(
        name: json['name'],
        details: hasDetails
            ? PokemonDetailsEntity(
                imageUrl: json['sprites']['front_default'],
                types: List.from(json['types'].map((item) => item['type']['name'])),
                abilities: List.from(json['abilities'].map((ability) => ability['ability']['name'])))
            : null);
  }
}
