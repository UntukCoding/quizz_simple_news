import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quzz_app/screen/profile/widget/user_avatar.dart';

class BuildProfile extends StatelessWidget {
  const BuildProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsetsGeometry.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      detailuser(context),
                      SizedBox(height: 20),
                      statistik(context),
                      SizedBox(height: 20),
                      achievement(context),
                      SizedBox(height: 20),
                      settings(context),
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

Widget detailuser(BuildContext context) {
  return Container(
    height: 220,
    width: MediaQuery.of(context).size.width,
    color: Colors.transparent,
    child: Stack(
      alignment: AlignmentGeometry.topCenter,
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Text(
                  'Hi, Sarah!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Level 15. 12,500 Total Pts',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 150,
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xfff3f1fa),
                    valueColor: AlwaysStoppedAnimation(Color(0xff9a39ba)),
                    minHeight: 5,
                    value: 0.6,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ),
        UserAvatar(imageUrl: '', size: 120),
      ],
    ),
  );
}

Widget statistik(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quiz Statistic',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Quiz Completed: 15',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  'Average Accuracy: 100%',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfff3edfb),
              ),
              child: Center(
                child: Icon(Icons.bar_chart, color: Colors.purpleAccent),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget achievement(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Colors.white,
    ),
    padding: EdgeInsets.all(20),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xff9e30bc),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(5),
          child: Center(
            child: Icon(Icons.science, size: 40, color: Colors.white),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Achievements',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {},
              child: Text(
                'View All Badges',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff9e30bc),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget settings(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff2edfb),
                  ),
                  child: Center(
                    child: Icon(Icons.edit, size: 30, color: Color(0xff8b35a9)),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.arrow_forward,
                color: Color(0xffb9bdc3),
                size: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(left: 50),
          child: Divider(thickness: 1, color: Color(0xffb9bdc3)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff2edfb),
                  ),
                  child: Center(
                    child: Icon(Icons.lock, size: 30, color: Color(0xff8b35a9)),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xffb9bdc3),
                size: 30,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(left: 50),
          child: Divider(thickness: 1, color: Color(0xffb9bdc3)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff2edfb),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.settings,
                      size: 30,
                      color: Color(0xff8b35a9),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.arrow_forward,
                color: Color(0xffb9bdc3),
                size: 30,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
