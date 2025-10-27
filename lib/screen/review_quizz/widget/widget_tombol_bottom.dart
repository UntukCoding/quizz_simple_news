import 'package:flutter/material.dart';

class WidgetTombolBottom extends StatelessWidget {
  const WidgetTombolBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('asdasd'),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff1D7FA9),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.replay,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Play Again',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('asdasd'),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff37AFA1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.picture_as_pdf,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Generate PDF',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('asdasd'),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xffCB9771),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.visibility,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Review Answer',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('asdasd'),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xffAD8AE8),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(Icons.home, size: 21, color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('asdas'),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff6680DB),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(Icons.share, size: 21, color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    'Share Score',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => print('asdas'),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff5F6A6E),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.settings,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Leaderboard',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
