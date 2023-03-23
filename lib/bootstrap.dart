import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'firebase_options.dart';
import 'main.dart';

Future<void> bootstrap() async {
  await _configureErrorsOutsideOfFlutter();
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await _configureFirebase();
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      runApp(ModularApp(module: AppModule(), child: const AppWidget()));
    },
    (error, stack) async {
      await FirebaseCrashlytics.instance.recordError(error, stack);
    },
  );
}

Future<void> _configureFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}

Future<void> _configureErrorsOutsideOfFlutter() async {
  Isolate.current.addErrorListener(
    RawReceivePort((pair) async {
      final List<dynamic> errorAndStacktrace = pair;
      await FirebaseCrashlytics.instance.recordError(
        errorAndStacktrace.first,
        errorAndStacktrace.last,
      );
    }).sendPort,
  );
}
