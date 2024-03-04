import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_price_point_response.freezed.dart';

@freezed
class CryptoPricePointResponse with _$CryptoPricePointResponse {
  const factory CryptoPricePointResponse({
    required CryptoPricePoint data,
    required String subject,
    required String topic,
    required String type,
  }) = _CryptoPricePointResponse;
}

@freezed
class CryptoPricePoint with _$CryptoPricePoint {
  const factory CryptoPricePoint({
    required String symbol,
    required int sequence,
    required String side,
    required int size,
    required double price,
    required int bestBidSize,
    required String bestBidPrice,
    required String bestAskPrice,
    required String tradeId,
    required int ts,
    required int bestAskSize,
  }) = _CryptoPricePoint;
}
