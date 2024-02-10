part of 'module_bloc.dart';


enum ModuleStatus{initial, loading, success, failed}

@freezed
class ModuleState with _$ModuleState {
  const factory ModuleState({
    @Default(ModuleStatus.initial) ModuleStatus status,
    @Default('') String message,
    @Default([]) List<Module> modules,
  }) = _ModuleState;
}
