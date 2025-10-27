import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quzz_app/core/app/app_bloc.dart';
import 'package:quzz_app/model/repository/firebase_auth_repo.dart';
import 'package:quzz_app/services/Firebase_auth.dart';

class AppRepo {
  static MultiRepositoryProvider repositoryProvider() {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => FirebaseAuthNew()),
        RepositoryProvider(
          create: (context) =>
              FirebaseAuthRepo(context.read<FirebaseAuthNew>()),
        ),
      ],
      child: const AppBloc(),
    );
  }
}
