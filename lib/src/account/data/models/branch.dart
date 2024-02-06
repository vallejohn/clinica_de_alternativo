import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

enum BranchType { clinic, warehouse }

@freezed
class Branch with _$Branch{
  const factory Branch({
    String? id,
    @Default('') String name,
    BranchType? type,
    @Default('') String address,
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
}