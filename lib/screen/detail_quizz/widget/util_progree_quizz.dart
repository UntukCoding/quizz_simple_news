import 'dart:math' as math;

import 'package:flutter/material.dart';

class CircularProgressWidget extends StatelessWidget {
  final double percentage;
  final double size;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  const CircularProgressWidget({
    super.key,
    required this.percentage,
    this.size = 120,
    this.strokeWidth = 10,
    this.progressColor = Colors.purple,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: CircularProgressPainter(
          percentage: percentage,
          strokeWidth: strokeWidth,
          progressColor: progressColor,
          backgroundColor: backgroundColor,
        ),
        child: Center(
          child: Text(
            '${percentage.toInt()}%',
            style: TextStyle(
              fontSize: size * 0.25,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double percentage;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  CircularProgressPainter({
    required this.percentage,
    required this.strokeWidth,
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    // Paint untuk background circle
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Paint untuk progress circle
    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Gambar background circle
    canvas.drawCircle(center, radius, backgroundPaint);

    // Gambar progress arc
    // Mulai dari top (-90 derajat) dan gambar sesuai persentase
    final sweepAngle = 2 * math.pi * (percentage / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2, // Mulai dari atas
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
