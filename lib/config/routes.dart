import 'package:go_router/go_router.dart';
import 'package:quzz_app/screen/auth/login_screen.dart';
import 'package:quzz_app/screen/auth/register_screen.dart';
import 'package:quzz_app/screen/confirmation/regis_success.dart';
import 'package:quzz_app/screen/detail_quizz/detail_quizz.dart';
import 'package:quzz_app/screen/home/dashboard.dart';
import 'package:quzz_app/screen/quizz_start/quizz_start.dart';
import 'package:quzz_app/screen/review_quizz/revieq_quizz.dart';

final GoRouter approuter = GoRouter(
  initialLocation: '/dashboard',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: '/regissuc',
      name: 'regissuc',
      builder: (context, state) => RegisSuccess(),
    ),
    GoRoute(
      path: '/dashboard',
      name: 'dashboard',
      // redirect: (context, state) {
      //   final auth = context.read<AuthBloc>().state;
      //   return auth.maybeWhen(success: (user) => null, orElse: () => '/login');
      // },
      builder: (context, state) => Dashboard(),
    ),
    GoRoute(
      path: '/detailquizz',
      name: 'detailquizzfromdashboard',
      builder: (context, state) {
        //
        return DetailQuizz();
      },
    ),
    GoRoute(
      path: '/startquizz',
      name: 'startquizz',
      builder: (context, state) => QuizzStart(),
    ),
    GoRoute(
      path: '/reviewquizz',
      name: 'reviewquizz',
      builder: (context, state) => RevieqQuizz(),
    ),
  ],
);
