import 'package:flutter/material.dart';
import 'package:quzz_app/config/routes.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: approuter,
    );
  }
}
