import 'package:flutter/material.dart';
import 'package:quzz_app/screen/quizz_start/widget/countdown_quizz.dart';

class WidgetStartQuizzBottom extends StatefulWidget {
  const WidgetStartQuizzBottom({super.key});

  @override
  State<WidgetStartQuizzBottom> createState() => _WidgetStartQuizzBottomState();
}

class _WidgetStartQuizzBottomState extends State<WidgetStartQuizzBottom> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          buildsoalquizz(),
          Spacer(),
          Column(
            children: [
              buildanswercard(correct: true),
              buildanswercard(correct: false),
              buildanswercard(correct: true),
              buildanswercard(correct: false),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class buildanswercard extends StatefulWidget {
  final bool correct;
  const buildanswercard({super.key, this.correct = false});

  @override
  State<buildanswercard> createState() => _buildanswercardState();
}

class _buildanswercardState extends State<buildanswercard> {
  bool belumdis = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: GestureDetector(
        onTap: () {
          print('asdas');
          setState(() {
            belumdis = !belumdis;
          });
        },
        child: Container(
          height: 48,
          width: 240,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            border: BoxBorder.all(width: 2, color: Colors.purpleAccent),
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'come',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: handlecolor(
                    belumdisi: belumdis,
                    correct: widget.correct,
                  ),
                  border: Border.all(width: 1, color: Colors.black),
                  shape: BoxShape.circle,
                ),
                child: changeicon(belumdisi: belumdis, correct: widget.correct),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color handlecolor({required bool belumdisi, required bool correct}) {
    if (!belumdisi) {
      return Colors.white;
    } else {
      return correct ? Colors.green : Colors.red;
    }
  }

  Widget changeicon({required bool belumdisi, required bool correct}) {
    if (!belumdisi) {
      return Center(child: SizedBox());
    } else {
      return Icon(
        widget.correct ? Icons.check : Icons.close,
        color: Colors.white,
        size: 20,
      );
    }
  }
}

class buildsoalquizz extends StatelessWidget {
  const buildsoalquizz({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 237,
      width: 281,
      child: Stack(
        alignment: AlignmentGeometry.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 170,
              width: 281,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                    color: Color(0xffFBECFF),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '05',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5),
                          SizedBox(
                            width: 40,
                            child: LinearProgressIndicator(
                              minHeight: 10,
                              valueColor: AlwaysStoppedAnimation(Colors.green),
                              backgroundColor: Colors.white,
                              value: 1,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                            child: LinearProgressIndicator(
                              minHeight: 10,
                              valueColor: AlwaysStoppedAnimation(Colors.red),
                              backgroundColor: Colors.white,
                              value: 1,
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '05',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'Question 13/20',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'How many students in your class _from korea?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 35,
            child: Container(
              height: 67,
              width: 67,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: CountdownTimerWidget(
                  initialSeconds: 18,
                  childsize: 49,
                  parentsize: 67,
                  autoStart: true,
                  progressColor: Color(0xffA42FC1),
                  backgroundColor: Colors.white,
                  enableAutoRestart: true,
                  strokeWidth: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
