import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quzz_app/screen/detail_quizz/widget/util_progree_quizz.dart';
import 'package:quzz_app/screen/detail_quizz/widget/widget_detail_quizz_top.dart';

class WidgetListQuizzDetail extends StatefulWidget {
  const WidgetListQuizzDetail({super.key});

  @override
  State<WidgetListQuizzDetail> createState() => _WidgetListQuizzDetailState();
}

class _WidgetListQuizzDetailState extends State<WidgetListQuizzDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Stack(
        children: [
          Menu_top_detail(),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      List_quiz_detail_card_completed(
                        totalkuis: 10,
                        progresskuis: 5,
                      ),
                      List_quiz_detail_card__not_completed(
                        totalkuis: 10,
                        progresskuis: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class List_quiz_detail_card_completed extends StatelessWidget {
  final double totalkuis;
  final double progresskuis;
  const List_quiz_detail_card_completed({
    super.key,
    required this.totalkuis,
    required this.progresskuis,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        height: 170,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Physics Fundamentals',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '10 Questions',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          '* 500 Total Points',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CircularProgressWidget(
                  percentage: perhitungan(totalkuis, progresskuis, false),
                  size: 60,
                  strokeWidth: 6,
                  progressColor: Color(0xFF9C27B0),
                  backgroundColor: Colors.grey[300]!,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: LinearProgressIndicator(
                    minHeight: 8,
                    backgroundColor: Color(0xffeeeff2),
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    borderRadius: BorderRadius.circular(10),
                    value: perhitungan(totalkuis, progresskuis, true),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Icon(Icons.check, color: Colors.white, size: 15),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '400 Pt',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  context.push('/reviewquizz');
                },
                child: Container(
                  height: 40,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffa033b8),
                  ),
                  child: Text(
                    'Review Quiz',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double perhitungan(double totalkuis, double progresskuis, bool secure) {
    var pembagianpertama = totalkuis / progresskuis;
    var linearprogress = (pembagianpertama - 0) / (totalkuis - 0);
    var circular = (pembagianpertama - 0) / (totalkuis - 0) * 100;
    return secure ? linearprogress : circular;
  }
}

class List_quiz_detail_card__not_completed extends StatefulWidget {
  final double totalkuis;
  final double progresskuis;
  const List_quiz_detail_card__not_completed({
    super.key,
    required this.totalkuis,
    required this.progresskuis,
  });

  @override
  State<List_quiz_detail_card__not_completed> createState() =>
      _List_quiz_detail_card__not_completedState();
}

class _List_quiz_detail_card__not_completedState
    extends State<List_quiz_detail_card__not_completed> {
  bool istekan = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: GestureDetector(
        onTap: () {
          setState(() {
            istekan = !istekan;
          });
        },
        child: Container(
          height: istekan ? 150 : 110,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Physics Fundamentals',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            '10 Questions',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            '* 500 Total Points',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.yellow),
                        Text(
                          'New !',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
              if (istekan) ...[
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () => context.push('/startquizz'),
                  child: Align(
                    alignment: AlignmentGeometry.bottomCenter,
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 10,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffa033b8),
                      ),
                      child: Text(
                        'Review Quiz',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
