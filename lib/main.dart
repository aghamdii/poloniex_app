import 'package:flutter/material.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:poloniex_app/app/app.dart';
import 'package:poloniex_app/core/infrastructure/di/app_env.dart';
import 'package:poloniex_app/core/infrastructure/di/injector.dart';
import 'package:poloniex_app/core/infrastructure/logger.dart';

void main() async {
  await configureDependencies(AppEnv.devName);
  Logger.setupLogger();
  runApp(
    HookedBlocConfigProvider(
      injector: () => getIt.get,
      child: const App(),
    ),
  );
}
