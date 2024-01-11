part of 'auth_checker_bloc.dart';

@freezed
class AuthCheckerEvent with _$AuthCheckerEvent {
  const factory AuthCheckerEvent.onCheckAuthStatus() = _OnCheckAuthStatus;
}
