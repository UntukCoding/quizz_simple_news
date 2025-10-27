import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quzz_app/model/repository/firebase_auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuthRepo authRepo;
  AuthBloc(this.authRepo) : super(_Initial()) {
    on<AuthEvent>((event, emit) async {
      if (event is _Loginwithemail) {
        emit(AuthState.loading());
        try {
          final user = await authRepo.login(event.email, event.password);
          if (user != null) {
            emit(AuthState.success(user));
          } else {
            emit(AuthState.error('Login Failed'));
          }
        } catch (e) {
          emit(AuthState.error(e.toString()));
        }
      } else if (event is _Regis) {
        emit(AuthState.loading());
        try {
          final user = await authRepo.regis(event.email, event.password);
          if (user != null) {
            emit(AuthState.success(user));
          } else {
            emit(AuthState.error('Login Failed'));
          }
        } catch (e) {
          emit(AuthState.error(e.toString()));
        }
      } else if (event is _Loginwithgoogle) {
        emit(AuthState.loading());
        try {
          final user = await authRepo.signwithgoogle();
          if (user != null) {
            emit(AuthState.success(user));
          } else {
            emit(AuthState.error('Login Failed'));
          }
        } catch (e) {
          emit(AuthState.error(e.toString()));
        }
      } else if (event is _CheckLogin) {
        User? user = authRepo.currentuser;
        await user?.reload();
        user = authRepo.currentuser;
        if (user != null) {
          emit(AuthState.success(user));
        } else {
          emit(AuthState.logout());
        }
      } else if (event is _Logout) {
        await authRepo.logout();
        await authRepo.logoutgoogle();
        emit(AuthState.logout());
      }
    });
  }
}
