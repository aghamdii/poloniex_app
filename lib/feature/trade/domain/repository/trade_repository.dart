import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_web_socket_token_response.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/ping_crypto_web_socket_request_dto.dart';

abstract class TradeRepository {
  Stream<CryptoPricePoint> getCryptoPricePoint();

  Future<void> pingCryptoWebSocket(PingCryptoWebSocketRequestDto request);

  Future<CryptoWebSocketTokenResponse> getCryptoWebSocketTokenUseCase();
}
