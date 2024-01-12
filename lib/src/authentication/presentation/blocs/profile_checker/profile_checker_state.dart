part of 'profile_checker_bloc.dart';

@freezed
class ProfileCheckerState with _$ProfileCheckerState {
  const factory ProfileCheckerState.initial() = _Initial;
  const factory ProfileCheckerState.loading() = _Loading;
  const factory ProfileCheckerState.success(ProfileInformation profile) = _Sucess;
  const factory ProfileCheckerState.failed() = _Failed;
}
