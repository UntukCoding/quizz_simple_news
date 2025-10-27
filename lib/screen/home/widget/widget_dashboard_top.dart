import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quzz_app/core/constant/dashboard_color.dart';
import 'package:quzz_app/screen/profile/widget/user_avatar.dart';

class WidgetDashboardTop extends StatelessWidget {
  const WidgetDashboardTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xffb347e8), Color(0xff8b2fc9)],
        ),
      ),
      child: Stack(
        children: [
          _builddekor(),
          SafeArea(
            child: Column(
              children: [
                _buildheader(context),
                Spacer(),
                _buildpodium(context),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _builddekor() {
  return Stack(
    children: [
      Positioned(
        top: 50,
        left: -30,
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
        top: 100,
        right: -20,
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
        top: 150,
        left: 100,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withValues(alpha: 0.08),
          ),
        ),
      ),
      Positioned(
        bottom: 50,
        right: 50,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withValues(alpha: 0.1),
          ),
        ),
      ),
    ],
  );
}

Widget _buildheader(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white.withValues(alpha: 0.2),
          ),
        ),
        SizedBox(width: 16),
        Text(
          'Explore Quizzez',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 20),
        UserAvatar(
          imageUrl: '',
          size: 40,
          onTap: () {
            context.push('/profileuser');
          },
        ),
      ],
    ),
  );
}

Widget _buildpodium(BuildContext context) {
  return SizedBox(
    height: 300,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      alignment: AlignmentGeometry.bottomCenter,
      children: [
        // Container 2 - Tengah (DI BELAKANG dengan warna lebih terang)
        _buildpodiumitem(
          translate: Offset(0, 0),
          rotate: 0,
          height: 199,
          parentheigt: 220,
          rank: '1',
          title: 'History Buff',
          quetioncount: '- 12 Q',
          point: '450pt',
          data: Icons.lightbulb,
          color: DashboardColor.lightPurplePodium,
        ),
        _buildpodiumitem(
          translate: Offset(-100, 0),
          rotate: -0.15,
          height: 176,
          parentheigt: 200,
          rank: '1',
          title: 'History Buff',
          quetioncount: '- 12 Q',

          data: Icons.science,
          color: DashboardColor.lightPurplePodium,
        ),
        _buildpodiumitem(
          translate: Offset(100, 0),
          rotate: 0.15,
          height: 166,
          parentheigt: 190,
          rank: '1',
          title: 'History Buff',
          quetioncount: '- 12 Q',
          data: Icons.flight,
          color: DashboardColor.lightPurplePodium,
        ),
      ],
    ),
  );
}

Widget _buildpodiumitem({
  required Offset translate,
  required double rotate,
  required double height,
  required double parentheigt,
  required String rank,
  required String title,
  required String quetioncount,
  String? point,
  required IconData data,
  required Color color,
}) {
  return Positioned(
    bottom: 0,
    child: Transform.translate(
      offset: translate,
      child: Transform.rotate(
        angle: rotate,
        child: SizedBox(
          height: parentheigt,
          width: 150,
          child: Stack(
            alignment: AlignmentGeometry.topCenter,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  height: height,
                  width: 102,
                  decoration: BoxDecoration(
                    color: color,
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rank,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        quetioncount,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withValues(alpha: 0.9),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (point != null) ...[
                        SizedBox(height: 4),
                        Text(
                          point,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(child: Icon(data, color: Colors.purpleAccent)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
