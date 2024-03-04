import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/domain/repository/trade_repository.dart';

@inject
class GetCryptoPriceStreamUseCase {
  GetCryptoPriceStreamUseCase(
    this._tradeRepository,
  );

  final TradeRepository _tradeRepository;

  Stream<CryptoPricePoint> call() => _tradeRepository.getCryptoPricePoint();
}
