part of 'auth_checker_bloc.dart';

@freezed
class AuthCheckerState with _$AuthCheckerState {
  const factory AuthCheckerState.authenticated(User user) = _Authenticated;
  const factory AuthCheckerState.unAuthenticated() = _UnAuthenticated;
}
