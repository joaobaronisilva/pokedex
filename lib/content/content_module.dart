import 'package:flutter_modular/flutter_modular.dart';

import '../infra/http/http.dart';
import 'content.dart';
import 'presentation/views/home/home.dart';
import 'presentation/views/home/home_page_view_model.dart';
import 'presentation/views/profile/profile_page.dart';
import 'presentation/widgets/pokemon_tile/pokemon_tile_view_model.dart';

class ContentModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<IHttpClient>((i) => HttpClient(baseUrl: 'https://pokeapi.co/api/')),
        Bind.lazySingleton<IContentDatasource>((i) => ContentDatasource(i.get<IHttpClient>())),
        Bind.lazySingleton<IContentRepository>((i) => ContentRepository(i.get<IContentDatasource>())),
        Bind.lazySingleton<IGetPokemonByNameUsecase>((i) => GetPokemonByNameUsecase(i.get<IContentRepository>())),
        Bind.lazySingleton<IGetPokemonsUsecase>((i) => GetPokemonUsecase(i.get<IContentRepository>())),
        Bind.lazySingleton<HomePageViewModel>((i) => HomePageViewModel(i.get<IGetPokemonsUsecase>())),
        Bind.factory<PokemonTileViewModel>((i) => PokemonTileViewModel(i.get<IGetPokemonByNameUsecase>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/profile',
          child: (context, args) => ProfilePage(entity: args.data),
        ),
      ];
}
