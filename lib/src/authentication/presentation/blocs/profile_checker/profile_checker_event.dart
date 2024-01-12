part of 'profile_checker_bloc.dart';

@freezed
class ProfileCheckerEvent with _$ProfileCheckerEvent {
  const factory ProfileCheckerEvent.onCheckCompletion(String userId) = _OnCheckCompletion;
  const factory ProfileCheckerEvent.onUpdateProfile(ProfileInformation information) = _OnUpdateProfile;
}
