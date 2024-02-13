part of 'branch_bloc.dart';

@freezed
class BranchEvent with _$BranchEvent {
  const factory BranchEvent.onStarted(List<Branch> branch) = _OnStarted;
  const factory BranchEvent.onFetch() = _OnFetch;
  const factory BranchEvent.onAdd(Branch branch) = _OnAdd;
  const factory BranchEvent.onEdit(Branch branch) = _OnEdit;
  const factory BranchEvent.onDelete(Branch branch) = _OnDelete;
}
