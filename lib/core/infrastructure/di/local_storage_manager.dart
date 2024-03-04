import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injecteo/injecteo.dart';

@inject
class SecureLocalStorage {
  final storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );
}
