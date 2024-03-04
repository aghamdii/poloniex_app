import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/infrastructure/di/app_env.dart';
import 'package:poloniex_app/core/infrastructure/di/injector.config.dart';

final getIt = GetItServiceLocator.instance;

const dev = Environment(AppEnv.devName);
const prod = Environment(AppEnv.prodName);

@InjecteoConfig(
  preferRelativeImports: false,
)
Future<void> configureDependencies(String env) async => $injecteoConfig(
      getIt,
      environment: env,
    );
