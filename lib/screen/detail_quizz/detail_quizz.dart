import 'package:flutter/material.dart';
import 'package:quzz_app/screen/detail_quizz/widget/widget_detail_quizz_top.dart';
import 'package:quzz_app/screen/detail_quizz/widget/widget_list_quizz_detail.dart';
import 'package:quzz_app/screen/detail_quizz/widget/widget_tombol_detail_quizz.dart';

class DetailQuizz extends StatefulWidget {
  const DetailQuizz({super.key});

  @override
  State<DetailQuizz> createState() => _DetailQuizzState();
}

class _DetailQuizzState extends State<DetailQuizz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9ebff),
      body: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          WidgetDetailQuizzTop(),
          WidgetListQuizzDetail(),
          WidgetTombolDetailQuizz(),
        ],
      ),
    );
  }
}
