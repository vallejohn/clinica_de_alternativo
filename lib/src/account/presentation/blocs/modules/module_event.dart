part of 'module_bloc.dart';

@freezed
class ModuleEvent with _$ModuleEvent {
  const factory ModuleEvent.onFetch() = _OnFetch;
  const factory ModuleEvent.onAdd(Module module) = _OnAdd;
  const factory ModuleEvent.onEdit(Module module) = _OnEdit;
  const factory ModuleEvent.onDelete(Module module) = _OnDelete;
}
