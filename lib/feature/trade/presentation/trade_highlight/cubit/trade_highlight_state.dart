part of 'trade_highlight_cubit.dart';

@freezed
class TradeHighlightState with _$TradeHighlightState {
  const factory TradeHighlightState({
    @Default([]) List<CryptoPricePoint> cryptoPricePoints,
    @Default(null) CryptoPricePoint? selectedCryptoPricePoint,
    @Default(PriceDifferenceStatus.neutral)
    PriceDifferenceStatus priceDifferenceStatus,
    @Default(0.00) double difference,
    @Default(0.00) double userInput,
  }) = _TradeHighlightState;
}
