import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CustomPaintDivider extends StatelessWidget {
  final Size size;
  final Color dividerColor;

  const CustomPaintDivider({
    super.key,
    required this.size,
    required this.dividerColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
        size.width * 0.75,
        ((size.width * 0.55) * 0.003472222222222222).toDouble(),
      ),
      painter: Divider(dividerColor),
    );
  }
}

class Divider extends CustomPainter {
  final Color color;

  Divider(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paintStroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;
    paintStroke.shader = ui.Gradient.linear(
        Offset(size.width * 0.9415799, size.height * 5.997860),
        Offset(size.width * 0.07216389, size.height * 7.955240), [
      const Color(0xffAFAFAF).withOpacity(0),
      color.withOpacity(1),
      const Color(0xffAFAFAF).withOpacity(0)
    ], [
      0,
      0.5,
      1
    ]);

    canvas.drawLine(Offset(size.width * 0, size.height * 0.5),
        Offset(size.width * 0.9, size.height * 0.5), paintStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
