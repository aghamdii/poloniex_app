import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/infrastructure/crypto_web_socket_manager.dart';

@inject
class CloseCryptoWebSocketUseCase {
  CloseCryptoWebSocketUseCase(
    this._cryptoWebSocketManager,
  );

  final CryptoWebSocketManager _cryptoWebSocketManager;

  Future<void> call() => _cryptoWebSocketManager.closeConnection();
}
