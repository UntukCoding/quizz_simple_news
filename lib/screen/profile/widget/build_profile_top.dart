import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BuildProfileTop extends StatelessWidget {
  const BuildProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 228,
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
          menutopdetailprofile(context),
        ],
      ),
    );
  }
}

Widget menutopdetailprofile(BuildContext context) {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                context.pop();
                print('asdasda');
              },
              icon: Icon(Icons.arrow_back, size: 28, color: Colors.white),
            ),
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                print('asdasda');
              },
              icon: Icon(Icons.edit, size: 28, color: Colors.white),
            ),
          ],
        ),
      ),
    ),
  );
}
