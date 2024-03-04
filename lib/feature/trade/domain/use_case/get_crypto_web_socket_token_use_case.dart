import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_web_socket_token_response.dart';
import 'package:poloniex_app/feature/trade/domain/repository/trade_repository.dart';

@inject
class GetCryptoWebSocketTokenUseCase {
  GetCryptoWebSocketTokenUseCase(
    this._tradeRepository,
  );

  final TradeRepository _tradeRepository;

  Future<CryptoWebSocketTokenResponse> call() =>
      _tradeRepository.getCryptoWebSocketTokenUseCase();
}
