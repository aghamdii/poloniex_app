import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:poloniex_app/core/presentation/widget/text_field/poloniex_text_field.dart';
import 'package:poloniex_app/feature/trade/domain/model/price_difference_status.dart';
import 'package:poloniex_app/feature/trade/presentation/widget/price_indicator.dart';

class PriceIndicatorForm extends HookWidget {
  const PriceIndicatorForm({
    required this.onChanged,
    required this.difference,
    required this.priceDifferenceStatus,
    super.key,
  });

  final void Function(String? text) onChanged;
  final double difference;
  final PriceDifferenceStatus priceDifferenceStatus;

  @override
  Widget build(BuildContext context) {
    final _priceController = useTextEditingController();

    return Column(
      children: [
        PriceIndicator(
          priceDifferenceStatus: priceDifferenceStatus,
          price: difference,
        ),
        const SizedBox(
          height: 32.0,
        ),
        Center(
          child: SizedBox(
            width: 140,
            child: PoloniexTextField(
              controller: _priceController,
              hint: 'Enter a price',
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
