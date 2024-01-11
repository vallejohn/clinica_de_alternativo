import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_checker_event.dart';
part 'auth_checker_state.dart';
part 'auth_checker_bloc.freezed.dart';

class AuthCheckerBloc extends Bloc<AuthCheckerEvent, AuthCheckerState> {
  AuthCheckerBloc() : super(const AuthCheckerState.unAuthenticated()) {
    on<_OnCheckAuthStatus>((event, emit)async {
      await emit.forEach<User?>(
        FirebaseAuth.instance.authStateChanges(),
        onData: (user) => user == null
            ? const AuthCheckerState.unAuthenticated()
            : AuthCheckerState.authenticated(user),
      );
    });
  }
}
