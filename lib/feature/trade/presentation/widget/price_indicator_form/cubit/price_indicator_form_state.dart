part of 'price_indicator_form_cubit.dart';

@freezed
class PriceIndicatorFormState with _$PriceIndicatorFormState {
  const factory PriceIndicatorFormState({
    @Default(PriceDifferenceStatus.neutral)
    PriceDifferenceStatus priceDifferenceStatus,
    @Default(0.00) double difference,
  }) = _PriceIndicatorFormState;
}
