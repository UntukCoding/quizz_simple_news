import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WidgetStartQuizzTop extends StatelessWidget {
  const WidgetStartQuizzTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 228,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffb347e8), Color(0xff8b2fc9)],
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
          buildtop(context),
        ],
      ),
    );
  }
}

Widget buildtop(BuildContext context) {
  return Positioned(
    top: 0,
    left: 0,
    right: 0,
    child: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back, size: 25, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, size: 25, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
