part of 'employees_bloc.dart';

@freezed
class EmployeesEvent with _$EmployeesEvent {
  const factory EmployeesEvent.onStarted(List<ProfileInformation> employees) = _OnStarted;
  const factory EmployeesEvent.onGetList() = _OnGetList;
  const factory EmployeesEvent.onAdd(AddAccountParams params) = _OnAdd;
  const factory EmployeesEvent.onUpdate(ProfileInformation profile) = _OnUpdate;
}
