import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  final Color color;
  final double dashLength;
  final double dashSpace;
  final double strokeWidth;
  final Axis orientation;

  DottedLinePainter({
    required this.color,
    required this.dashLength,
    required this.dashSpace,
    required this.strokeWidth,
    required this.orientation,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    if (orientation == Axis.horizontal) {
      double startX = 0;
      while (startX < size.width) {
        canvas.drawLine(Offset(startX, 0), Offset(startX + dashLength, 0), paint);
        startX += dashLength + dashSpace;
      }
    } else if (orientation == Axis.vertical) {
      double startY = 0;
      while (startY < size.height) {
        canvas.drawLine(Offset(0, startY), Offset(0, startY + dashLength), paint);
        startY += dashLength + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DottedLineWidget extends StatelessWidget {
  final Color color;
  final double dashLength;
  final double dashSpace;
  final double strokeWidth;
  final Axis orientation;

  DottedLineWidget({
    required this.color,
    required this.dashLength,
    required this.dashSpace,
    required this.strokeWidth,
    required this.orientation,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: orientation == Axis.horizontal
          ? Size(double.infinity, strokeWidth) // Horizontal size
          : Size(strokeWidth, double.infinity), // Vertical size
      painter: DottedLinePainter(
        color: color,
        dashLength: dashLength,
        dashSpace: dashSpace,
        strokeWidth: strokeWidth,
        orientation: orientation,
      ),
    );
  }
}