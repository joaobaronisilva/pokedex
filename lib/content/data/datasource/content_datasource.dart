import '../../../infra/http/http.dart';
import '../../domain/entities/entities.dart';
import '../mappers/pokemon_entity_mapper.dart';

abstract class IContentDatasource {
  Future<List<PokemonEntity>> getPokemons({required int limit, required int offset});
  Future<PokemonEntity> getPokemonByName({required String name});
}

class ContentDatasource implements IContentDatasource {
  final IHttpClient _client;

  ContentDatasource(this._client);

  @override
  Future<List<PokemonEntity>> getPokemons({required int limit, required int offset}) async {
    final result = await _client.get('pokemon', apiVersion: 'v2', queryParameters: {'limit': limit, 'offset': offset});
    if (result.statusCode != 200) throw Exception('Unexpected status code');
    return List.from(result.data['results'].map((item) => PokemonEntityMapper.fromJson(item)));
  }

  @override
  Future<PokemonEntity> getPokemonByName({required String name}) async {
    final result = await _client.get('pokemon/$name');
    if (result.statusCode != 200) throw Exception('Unexpected status code');
    return PokemonEntityMapper.fromJson(result.data);
  }
}
