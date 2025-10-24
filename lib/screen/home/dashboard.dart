import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quzz_app/logic/bloc/auth/auth_bloc.dart';
import 'package:quzz_app/screen/home/widget/widget_dashboar_bottom.dart';
import 'package:quzz_app/screen/home/widget/widget_dashboard_top.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(orElse: () {}, logout: () => context.go('/login'));
        },
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              WidgetDashboardTop(),
              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: WidgetDashboarBottom(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
