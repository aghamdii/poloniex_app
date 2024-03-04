import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/infrastructure/crypto_web_socket_manager.dart';

@inject
class OpenCryptoWebSocketUseCase {
  OpenCryptoWebSocketUseCase(
    this._cryptoWebSocketManager,
  );

  final CryptoWebSocketManager _cryptoWebSocketManager;

  Future<void> call(String token) =>
      _cryptoWebSocketManager.setupConnection(token);
}
