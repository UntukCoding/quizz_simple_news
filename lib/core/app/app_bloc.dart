import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quzz_app/core/app/app_view.dart';
import 'package:quzz_app/logic/bloc/auth/auth_bloc.dart';
import 'package:quzz_app/model/repository/firebase_auth_repo.dart';

class AppBloc extends StatelessWidget {
  const AppBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(context.read<FirebaseAuthRepo>()),
        ),
      ],
      child: AppView(),
    );
  }
}
