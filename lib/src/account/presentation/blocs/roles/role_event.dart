part of 'role_bloc.dart';

@freezed
class RoleEvent with _$RoleEvent {
  const factory RoleEvent.onStarted(List<Role> modules) = _OnStarted;
  const factory RoleEvent.onFetch() = _OnFetch;
  const factory RoleEvent.onAdd(Role role) = _OnAdd;
  const factory RoleEvent.onEdit(Role role) = _OnEdit;
  const factory RoleEvent.onUpdate(Role role) = _OnUpdate;
  const factory RoleEvent.onDelete(Role role) = _OnDelete;
}
