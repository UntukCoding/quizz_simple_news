import 'package:flutter/material.dart';
import 'package:quzz_app/screen/quizz_start/widget/widget_start_quizz_bottom.dart';
import 'package:quzz_app/screen/quizz_start/widget/widget_start_quizz_top.dart';

class QuizzStart extends StatefulWidget {
  const QuizzStart({super.key});

  @override
  State<QuizzStart> createState() => _QuizzStartState();
}

class _QuizzStartState extends State<QuizzStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9ebff),
      body: Stack(
        children: [
          WidgetStartQuizzTop(),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: WidgetStartQuizzBottom(),
          ),
        ],
      ),
    );
  }
}
