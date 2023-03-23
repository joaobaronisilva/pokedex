import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'bootstrap.dart';
import 'content/content.dart';
import 'infra/infra.dart';

void main() {
  bootstrap();
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init().config(constraints, orientation);
            return MaterialApp.router(
              title: 'Pokedex',
              theme: AppTheme.instance.lightTheme,
              darkTheme: AppTheme.instance.darkTheme,
              themeMode: ThemeMode.system,
              routeInformationParser: Modular.routeInformationParser,
              routerDelegate: Modular.routerDelegate,
            );
          },
        );
      },
    );
  }
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: ContentModule()),
      ];
}
