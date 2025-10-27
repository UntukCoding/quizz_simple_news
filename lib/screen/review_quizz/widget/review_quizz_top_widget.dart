import 'package:flutter/material.dart';

class ReviewQuizzTopWidget extends StatelessWidget {
  const ReviewQuizzTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffb347e8), Color(0xff8b2fc9)],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 69,
            left: -45,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
          ),
          Positioned(
            top: -34,
            left: 78,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 207,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.08),
              ),
            ),
          ),
          Positioned(
            top: 88,
            right: -30,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.1),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 175,
                    width: 175,
                    decoration: BoxDecoration(
                      color: Color(0xfffFFFFF).withValues(alpha: 0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        height: 139,
                        width: 139,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfffFFFFF).withValues(alpha: 0.30),
                        ),
                        child: Center(
                          child: Container(
                            height: 116,
                            width: 116,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xfffFFFFF).withValues(alpha: 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'your Score',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xffA42FC1),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '100',
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Color(0xffA42FC1),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'pt',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xffA42FC1),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
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
            ),
          ),
        ],
      ),
    );
  }
}
