import 'package:flutter/material.dart';
import 'dart:math';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double size;
  final double strokeWidth;
  final Color color;
  final double value;
  final Widget? child;

  CustomCircularProgressIndicator({
    this.size = 0,
    this.strokeWidth = 5.0,
    this.color = Colors.red,
    this.value = 0.97,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          painter: _CustomCircularProgressPainter(
            strokeWidth: strokeWidth,
            color: color,
            value: value,
          ),
          size: Size.square(size),
        ),
        if (child != null) child!,
      ],
    );
  }
}

class _CustomCircularProgressPainter extends CustomPainter {
  final double strokeWidth;
  final Color color;
  final double value;

  _CustomCircularProgressPainter({
    required this.strokeWidth,
    required this.color,
    required this.value,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - (strokeWidth / 2);

    final progressPaint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;






    final double startAngle = -pi / 2 + (80 * pi / 180); // Convert degrees to radians
    final double sweepAngle = -2 * pi * value;









    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(_CustomCircularProgressPainter oldDelegate) {
    return oldDelegate.value != value;
  }
}

// Usage example
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Progress Indicator'),
      ),
      body: Center(
        child: CustomCircularProgressIndicator(
          size: 100.0,
          strokeWidth: 8.0,
          color: Colors.red,
          value: 0.97,
          child: Text(
            '23.1 GB ',
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
