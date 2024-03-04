import 'package:injecteo/injecteo.dart';
import 'package:poloniex_app/core/infrastructure/mapper/data_mapper.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/infrastructure/dto/crypto_price_point_response_dto.dart';

@inject
class CryptoPricePointResponseDtoMapper
    extends DataMapper<CryptoPricePointResponseDto, CryptoPricePointResponse> {
  CryptoPricePointResponseDtoMapper(
    this._cryptoPricePointDtoMapper,
  );

  final CryptoPricePointDtoMapper _cryptoPricePointDtoMapper;

  @override
  CryptoPricePointResponse map(CryptoPricePointResponseDto data) {
    return CryptoPricePointResponse(
      data: _cryptoPricePointDtoMapper.map(data.data),
      subject: data.subject ?? '',
      topic: data.topic ?? '',
      type: data.type ?? '',
    );
  }
}

@inject
class CryptoPricePointDtoMapper
    extends DataMapper<CryptoPricePointDto, CryptoPricePoint> {
  @override
  CryptoPricePoint map(CryptoPricePointDto data) {
    return CryptoPricePoint(
      symbol: data.symbol ?? '',
      sequence: data.sequence ?? 0,
      side: data.side ?? '',
      size: data.size ?? 0,
      price: data.price ?? 0,
      bestBidSize: data.bestBidSize ?? 0,
      bestBidPrice: data.bestBidPrice ?? '',
      bestAskPrice: data.bestAskPrice ?? '',
      tradeId: data.tradeId ?? '',
      ts: data.ts ?? 0,
      bestAskSize: data.bestAskSize ?? 0,
    );
  }
}
