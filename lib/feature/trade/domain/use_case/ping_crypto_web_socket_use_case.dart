import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/domain/repository/trade_repository.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/ping_crypto_web_socket_request_dto.dart';

@inject
class PingCryptoWebSocketUseCase {
  PingCryptoWebSocketUseCase(
    this._tradeRepository,
  );

  final TradeRepository _tradeRepository;

  Future<void> call(String id) => _tradeRepository.pingCryptoWebSocket(
        PingCryptoWebSocketRequestDto(
          id: id,
        ),
      );
}
