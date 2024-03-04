import 'package:flutter/material.dart';
import 'package:poloniex_app/core/presentation/extensions/theme_extension.dart';
import 'package:poloniex_app/feature/trade/domain/model/price_difference_status.dart';

class PriceIndicator extends StatelessWidget {
  const PriceIndicator({
    required this.priceDifferenceStatus,
    required this.price,
  });

  final PriceDifferenceStatus priceDifferenceStatus;
  final double price;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          _getGainingIcon(priceDifferenceStatus),
          color: _getGainingColor(priceDifferenceStatus),
          size: 60,
        ),
        Text(
          '${price.abs().toStringAsFixed(2)}',
          style: theme.textTheme.displaySmall!.copyWith(
            color: _getGainingColor(priceDifferenceStatus),
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }

  IconData _getGainingIcon(PriceDifferenceStatus priceDifferenceStatus) {
    if (priceDifferenceStatus == PriceDifferenceStatus.neutral)
      return Icons.horizontal_rule;
    return priceDifferenceStatus == PriceDifferenceStatus.gain
        ? Icons.keyboard_arrow_up
        : Icons.keyboard_arrow_down;
  }

  Color _getGainingColor(PriceDifferenceStatus priceDifferenceStatus) {
    if (priceDifferenceStatus == PriceDifferenceStatus.neutral)
      return Colors.grey;
    return priceDifferenceStatus == PriceDifferenceStatus.gain
        ? Colors.green
        : Colors.red;
  }
}
