import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class CountdownTimerWidget extends StatefulWidget {
  final int initialSeconds;
  final double childsize;
  final double parentsize;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;
  final bool autoStart;
  final bool enableAutoRestart;

  const CountdownTimerWidget({
    super.key,
    required this.initialSeconds,
    this.childsize = 150,
    this.parentsize = 170,
    this.strokeWidth = 10,
    this.progressColor = Colors.purple,
    this.backgroundColor = Colors.grey,
    this.autoStart = false,
    this.enableAutoRestart = false,
  });

  @override
  State<CountdownTimerWidget> createState() => _CountdownTimerWidgetState();
}

class _CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  late int currentSeconds;
  late int totalSeconds;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    currentSeconds = widget.initialSeconds;
    totalSeconds = widget.initialSeconds;

    if (widget.autoStart) {
      startTimer();
    }
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentSeconds > 0) {
        setState(() {
          currentSeconds--;
        });
      } else {
        // Cek apakah auto restart diaktifkan
        if (widget.enableAutoRestart) {
          setState(() {
            currentSeconds = totalSeconds;
          });
        } else {
          // Berhenti saat mencapai 0
          _timer?.cancel();
        }
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double percentage = (currentSeconds / totalSeconds) * 100;

    return SizedBox(
      width: widget.childsize,
      height: widget.childsize,
      child: CustomPaint(
        painter: CountdownCirclePainter(
          percentage: percentage,
          strokeWidth: widget.strokeWidth,
          progressColor: widget.progressColor,
          backgroundColor: widget.backgroundColor,
        ),
        child: Center(
          child: Text(
            '$currentSeconds',
            style: TextStyle(
              fontSize: widget.childsize * 0.3,
              fontWeight: FontWeight.bold,
              color: widget.progressColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CountdownCirclePainter extends CustomPainter {
  final double percentage;
  final double strokeWidth;
  final Color progressColor;
  final Color backgroundColor;

  CountdownCirclePainter({
    required this.percentage,
    required this.strokeWidth,
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;

    // Paint untuk background circle (full circle di belakang)
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Paint untuk progress circle (yang berkurang)
    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Gambar background circle PENUH di belakang
    canvas.drawCircle(center, radius, backgroundPaint);

    // Gambar progress arc di ATAS background
    final sweepAngle = 2 * math.pi * (percentage / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2, // Mulai dari atas (12 o'clock)
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
