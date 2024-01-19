part of 'branch_bloc.dart';

enum BranchStatus{initial, loading, success, failed}

@freezed
class BranchState with _$BranchState {
  const factory BranchState({
    @Default(BranchStatus.initial) BranchStatus status,
    @Default('') String message,
    @Default([]) List<Branch> branches,
  }) = _BranchState;
}
