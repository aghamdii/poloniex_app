import 'dart:math';
import 'package:flutter/material.dart';
import 'package:poloniex_app/feature/trade/domain/model/crypto_price_point_response.dart';

class CryptoPriceChartPainter extends CustomPainter {
  CryptoPriceChartPainter({
    required this.points,
    required this.graphColor,
    required this.barColor,
    required this.barPosition,
    required this.selectedItem,
  });
  final List<CryptoPricePoint> points;
  final Color graphColor;
  final Color barColor;
  final double barPosition;
  final CryptoPricePoint? selectedItem;

  Paint buildPaint(Color color, double strokeWidth) {
    return Paint()
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..isAntiAlias = true
      ..filterQuality = FilterQuality.high
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round
      ..color = color;
  }

  Future<void> drawGraph(
    Canvas canvas,
    Size size,
  ) async {
    if (points.isEmpty) return;
    final pointsCount = points.length - 1;
    final sectionWidth = size.width / pointsCount;

    final maxData = points.map((item) => item.price).reduce(max);
    final maxValue = maxData * 1.005;
    final minValue = points.map((item) => item.price).reduce(min);

    final height = size.height * 0.70;
    final valueGap = maxValue - minValue;

    final paint = buildPaint(graphColor, 2);
    final path = Path();

    if (points.length > 2) {
      _drawMoreThanTwoPoints(
          pointsCount, sectionWidth, maxValue, valueGap, height, path);
    } else if (points.length == 2) {
      _drawTwoPoints(sectionWidth, maxValue, valueGap, height, path);
    } else if (points.length == 1) {
      _drawOnePoints(size.width, maxValue, valueGap, height, path);
    }

    canvas.drawPath(path, paint);
  }

  void drawBar(Canvas canvas, Size size) {
    final position = barPosition > -1 ? barPosition : size.width;
    final paint = buildPaint(barColor, 1);
    canvas.drawLine(Offset(position, -5), Offset(position, size.height), paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    drawGraph(canvas, size);
    drawBar(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CryptoPriceChartPainter oldDelegate) {
    return points != oldDelegate.points ||
        barPosition != oldDelegate.barPosition;
  }

  void _drawMoreThanTwoPoints(
    int pointsCount,
    double sectionWidth,
    double maxValue,
    double valueGap,
    double height,
    Path path,
  ) {
    for (var i = 0; i < pointsCount; i++) {
      final start = i * sectionWidth;
      final end = (i + 1) * sectionWidth;

      final startItem = points[i];
      final startValue = ((maxValue - startItem.price) / valueGap) * height;

      final endItem = points[i + 1];
      final endValue = ((maxValue - endItem.price) / valueGap) * height;

      if (start == 0) {
        path.moveTo(start, startValue);
      } else {
        final controlPointX = start + (end - start) / 2;
        path.cubicTo(
          controlPointX,
          startValue,
          controlPointX,
          endValue,
          end,
          endValue,
        );
      }
    }
  }

  void _drawTwoPoints(
    double sectionWidth,
    double maxValue,
    double valueGap,
    double height,
    Path path,
  ) {
    final start = 0.0;
    final end = sectionWidth;

    final startItem = points[0];
    final startValue = ((maxValue - startItem.price) / valueGap) * height;

    final endItem = points[1];
    final endValue = ((maxValue - endItem.price) / valueGap) * height;

    path.moveTo(start, startValue);
    path.lineTo(end, endValue);
  }

  void _drawOnePoints(
    double sectionWidth,
    double maxValue,
    double valueGap,
    double height,
    Path path,
  ) {
    final start = 0.0;
    final end = sectionWidth;

    final startItem = points[0];
    final startValue = ((maxValue - startItem.price) / valueGap) * height;

    path.moveTo(start, startValue);
    path.lineTo(end, startValue);
  }
}
