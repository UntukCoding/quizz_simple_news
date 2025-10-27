import 'package:flutter/material.dart';
import 'package:quzz_app/screen/profile/widget/build_profile.dart';
import 'package:quzz_app/screen/profile/widget/build_profile_top.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9ebff),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentGeometry.topCenter,
          children: [
            BuildProfileTop(),
            Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: BuildProfile(),
            ),
          ],
        ),
      ),
    );
  }
}
