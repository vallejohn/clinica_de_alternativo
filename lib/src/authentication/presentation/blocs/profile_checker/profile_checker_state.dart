part of 'profile_checker_bloc.dart';

enum ProfileCheckStatus{initial, loading, success, failed}

@freezed
class ProfileCheckerState with _$ProfileCheckerState {
  const factory ProfileCheckerState({
    @Default(ProfileCheckStatus.initial) ProfileCheckStatus status,
    ProfileInformation? profile,
    @Default('') String message,
  }) = _ProfileCheckerState;
}
