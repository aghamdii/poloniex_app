import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/infrastructure/di/local_storage_manager.dart';
import 'package:poloniex_app/feature/auth/domain/model/user_session.dart';

const String _accessTokenKey = 'accessToken';
const String _refreshTokenKey = 'refreshToken';

@inject
class AuthLocalDataSource {
  AuthLocalDataSource(
    this._secureStorage,
  );

  final SecureLocalStorage _secureStorage;

  Future<void> updateUserSession(
      String accessToken, String refreshToken) async {
    await _secureStorage.storage
        .write(key: _accessTokenKey, value: accessToken);
    await _secureStorage.storage
        .write(key: _refreshTokenKey, value: refreshToken);
  }

  Future<UserSession> getUserSession() async {
    final accessToken = await _secureStorage.storage.read(key: _accessTokenKey);
    final refreshToken =
        await _secureStorage.storage.read(key: _refreshTokenKey);

    return UserSession(
      accessToken: accessToken ?? '',
      refreshToken: refreshToken ?? '',
    );
  }

  Future<void> clearUserSession() async {
    await _secureStorage.storage.delete(key: _accessTokenKey);
    await _secureStorage.storage.delete(key: _refreshTokenKey);
  }
}
