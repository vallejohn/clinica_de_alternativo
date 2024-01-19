part of 'role_bloc.dart';

@freezed
class RoleEvent with _$RoleEvent {
  const factory RoleEvent.onFetch() = _OnFetch;
  const factory RoleEvent.onAdd(Role role) = _OnAdd;
  const factory RoleEvent.onEdit(Role role) = _OnEdit;
  const factory RoleEvent.onDelete(Role role) = _OnDelete;
}
