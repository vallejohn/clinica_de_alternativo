part of 'employees_bloc.dart';

enum EmployeeStatus{initial, loading, success, failed}

@freezed
class EmployeesState with _$EmployeesState {
  const factory EmployeesState({
    @Default(EmployeeStatus.initial) EmployeeStatus status,
    @Default('') String message,
    ErrorCode? errorCode,
    @Default([]) List<ProfileInformation> employees,
  }) = _EmployeesState;
}
