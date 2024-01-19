part of 'role_bloc.dart';

enum RoleStatus{initial, loading, success, failed}

@freezed
class RoleState with _$RoleState {
  const factory RoleState({
    @Default(RoleStatus.initial) RoleStatus status,
    @Default('') String message,
    @Default([]) List<Role> roles,
  }) = _RoleState;
}
