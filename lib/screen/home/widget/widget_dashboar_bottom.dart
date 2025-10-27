import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quzz_app/core/constant/dashboard_color.dart';

class WidgetDashboarBottom extends StatefulWidget {
  const WidgetDashboarBottom({super.key});

  @override
  State<WidgetDashboarBottom> createState() => _WidgetDashboarBottomState();
}

class _WidgetDashboarBottomState extends State<WidgetDashboarBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  _buildcategoryrow(
                    index: '01',
                    title: 'Science',
                    quizzcount: 15,
                    icon: Icons.science_outlined,
                    context: context,
                    ontap: () {
                      context.push('/detailquizz');
                    },
                  ),
                  _buildcategoryrow(
                    index: '02',
                    title: 'History',
                    quizzcount: 10,
                    icon: Icons.menu_book_outlined,
                    context: context,
                    ontap: () {},
                  ),
                  _buildcategoryrow(
                    index: '03',
                    title: 'Math',
                    quizzcount: 15,
                    icon: Icons.calculate_outlined,
                    context: context,
                    ontap: () {},
                  ),
                  _buildcategoryrow(
                    index: '04',
                    title: 'Music',
                    quizzcount: 15,
                    icon: Icons.music_note_outlined,
                    context: context,
                    ontap: () {},
                  ),
                  _buildcategoryrow(
                    index: '05',
                    title: 'Geography',
                    quizzcount: 15,
                    icon: Icons.public_outlined,
                    context: context,
                    ontap: () {},
                  ),
                  _buildcategoryrow(
                    index: '05',
                    title: 'Geography',
                    quizzcount: 15,
                    icon: Icons.public_outlined,
                    context: context,
                    ontap: () {},
                  ),
                  _buildcategoryrow(
                    index: '05',
                    title: 'Geography',
                    quizzcount: 15,
                    icon: Icons.public_outlined,
                    context: context,
                    ontap: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: GestureDetector(
                  onTap: () => print('goblok woi'),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                      color: DashboardColor.primaryPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow, color: Colors.white, size: 16),
                        SizedBox(width: 10),
                        Text(
                          'START NEW QUIZ',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
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

Widget _buildcategoryrow({
  required String index,
  required String title,
  required int quizzcount,
  required IconData icon,
  required BuildContext context,
  required Function()? ontap,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 10, top: 12, bottom: 12),
    child: Row(
      children: [
        Text(
          index,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: ontap,
            child: Container(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
                right: 10,
              ),
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffeff0f1),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(icon, color: DashboardColor.primaryPurple, size: 28),
                      SizedBox(width: 16),
                      Text(
                        title,
                        style: TextStyle(
                          color: DashboardColor.darkText,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '$quizzcount Quizzes',
                    style: TextStyle(
                      fontSize: 15,
                      color: DashboardColor.darkText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
