import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class DashedSeparator extends CustomPainter {
  final DashedSeparatorStyle? style;

  DashedSeparator({this.style});

  DashedSeparatorStyle get _style => style ?? DashedSeparatorStyle();

  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = _style.dashWidth, dashSpace = _style.dashSpace, startX = _style.startX;
    final paint = Paint()
      ..color = _style.color
      ..strokeWidth = _style.strokeWidth;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class DashedSeparatorStyle {
  final double dashWidth;
  final double startX;
  final double dashSpace;
  final Color color;
  final double strokeWidth;

  DashedSeparatorStyle({
    this.dashWidth = 5,
    this.startX = 0,
    this.dashSpace = 5,
    this.color = ColorsOmni.gray,
    this.strokeWidth = 2,
  });
}
