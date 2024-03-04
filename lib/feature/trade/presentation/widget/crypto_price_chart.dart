import 'package:flutter/material.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';
import 'package:poloniex_app/feature/trade/presentation/widget/crypto_price_chart_painter.dart';

class CryptoPriceChart extends StatefulWidget {
  const CryptoPriceChart({
    required this.points,
    required this.onDragUpdate,
    required this.isGaining,
    super.key,
  });

  final List<CryptoPricePoint> points;
  final void Function(int index) onDragUpdate;
  final bool isGaining;

  @override
  State<CryptoPriceChart> createState() => _CryptoPriceChart();
}

class _CryptoPriceChart extends State<CryptoPriceChart> {
  int currentDragIndex = -1;
  double dragPosition = -1;
  double labelPosition = -1;
  bool isCenter = false;
  bool isLeft = false;
  bool isRight = false;

  List<CryptoPricePoint> get points => widget.points;

  void Function(int index) get onDragUpdate => widget.onDragUpdate;

  void updatePortfolioData(double dx, double maxWidth) {
    final dragPositionBeforeGraph = dx < 0 && dx != -1;
    final dragPositionAfterGraph = dx > maxWidth;
    if (dragPositionBeforeGraph || dragPositionAfterGraph) return;

    setState(() {
      dragPosition = dx;
      labelPosition = dx;
    });
    final dragIndex = calculateDragIndex(dx, maxWidth);
    if (dragIndex != currentDragIndex) {
      currentDragIndex = dragIndex;
      if (currentDragIndex < points.length)
        onDragUpdate(currentDragIndex);
      else
        onDragUpdate(-1);
    }
    // Used if you want to add label above the indicator
    if (dx < 80) {
      isCenter = false;
      isLeft = true;
      isRight = false;
      labelPosition = dragPosition;
    } else if (maxWidth - dx < 80) {
      isCenter = false;
      isLeft = false;
      isRight = true;
      labelPosition = labelPosition - 80;
    } else {
      isCenter = true;
      isLeft = false;
      isRight = false;
      labelPosition = labelPosition - 40;
    }
  }

  int calculateDragIndex(double dx, double maxWidth) {
    final partsLength = points.length;
    final partSize = maxWidth / partsLength;
    final dateIndex = dragPosition / partSize;
    return dateIndex.floor();
  }

  AlignmentGeometry getTextAlignment() {
    if (isCenter) {
      return Alignment.center;
    } else if (isLeft) {
      return Alignment.centerLeft;
    } else {
      return Alignment.centerRight;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return GestureDetector(
          onPanStart: (details) =>
              updatePortfolioData(details.localPosition.dx, maxWidth),
          onPanUpdate: (details) =>
              updatePortfolioData(details.localPosition.dx, maxWidth),
          onLongPressDown: (details) =>
              updatePortfolioData(details.localPosition.dx, maxWidth),
          onLongPressMoveUpdate: (details) =>
              updatePortfolioData(details.localPosition.dx, maxWidth),
          onPanEnd: (_) => updatePortfolioData(-1, maxWidth),
          onLongPressEnd: (_) => updatePortfolioData(-1, maxWidth),
          onLongPressCancel: () => updatePortfolioData(-1, maxWidth),
          onVerticalDragEnd: (_) => updatePortfolioData(-1, maxWidth),
          child: SizedBox(
            height: 290,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomPaint(
                size: const Size.fromHeight(240),
                painter: CryptoPriceChartPainter(
                  points: points,
                  barPosition: dragPosition,
                  graphColor: widget.isGaining ? Colors.green : Colors.red,
                  barColor:
                      dragPosition != -1 ? Colors.grey : Colors.transparent,
                  selectedItem:
                      currentDragIndex != -1 ? points[currentDragIndex] : null,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
