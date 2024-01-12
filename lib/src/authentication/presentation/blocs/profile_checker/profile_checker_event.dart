part of 'profile_checker_bloc.dart';

@freezed
class ProfileCheckerEvent with _$ProfileCheckerEvent {
  const factory ProfileCheckerEvent.onCheckCompletion() = _OnCheckCompletion;
}
