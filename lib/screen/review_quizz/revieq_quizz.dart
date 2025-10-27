import 'package:flutter/material.dart';
import 'package:quzz_app/screen/review_quizz/widget/review_quizz_top_widget.dart';
import 'package:quzz_app/screen/review_quizz/widget/widget_result_card.dart';
import 'package:quzz_app/screen/review_quizz/widget/widget_tombol_bottom.dart';

class RevieqQuizz extends StatefulWidget {
  const RevieqQuizz({super.key});

  @override
  State<RevieqQuizz> createState() => _RevieqQuizzState();
}

class _RevieqQuizzState extends State<RevieqQuizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9ebff),
      body: Stack(
        children: [
          ReviewQuizzTopWidget(),
          Positioned(bottom: 0, left: 0, right: 0, child: WidgetTombolBottom()),
          Align(alignment: AlignmentGeometry.center, child: WidgetResultCard()),
        ],
      ),
    );
  }
}
