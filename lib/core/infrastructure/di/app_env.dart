import 'package:injecteo/injecteo.dart';

const prodEnvList = [
  Environment.dev,
  Environment.prod,
];

class AppEnv {
  factory AppEnv.production() {
    return AppEnv._(
      prodName,
      apiUrl: 'https://prod.com',
    );
  }

  factory AppEnv.development() {
    return AppEnv._(
      devName,
      apiUrl: 'https://dev.com',
    );
  }

  AppEnv._(
    this.name, {
    required this.apiUrl,
  });

  static const devName = 'dev';
  static const prodName = 'prod';

  final String name;
  final String apiUrl;
}
