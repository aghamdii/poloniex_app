import 'package:flutter/material.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/presentation/widget/crypto_price_chart.dart';

class CryptoPriceContainer extends StatelessWidget {
  const CryptoPriceContainer({
    required this.cryptoPricePoints,
    required this.isGaining,
    required this.onDragUpdated,
    super.key,
  });

  final List<CryptoPricePoint> cryptoPricePoints;
  final bool isGaining;
  final void Function(int index) onDragUpdated;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: CryptoPriceChart(
        points: cryptoPricePoints,
        onDragUpdate: onDragUpdated,
        isGaining: isGaining,
      ),
    );
  }
}
