import 'package:flutter/material.dart';
import 'package:quzz_app/core/constant/dashboard_color.dart';

class WidgetTombolDetailQuizz extends StatelessWidget {
  const WidgetTombolDetailQuizz({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: GestureDetector(
            onTap: () => print('goblok woi'),
            child: Container(
              height: 40,
              width: 210,
              decoration: BoxDecoration(
                color: DashboardColor.primaryPurple,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'START RANDOM QUIZ',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
