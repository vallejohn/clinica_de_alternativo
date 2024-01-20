import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../account/data/models/branch.dart';
import '../../../account/data/models/role.dart';

part 'profile_information.freezed.dart';
part 'profile_information.g.dart';

@freezed
class ProfileInformation with _$ProfileInformation{
  const factory ProfileInformation({
    String? id,
    String? uid,
    @Default('') String name,
    Branch? branch,
    @Default('') String profileUrl,
    Role? role,
    @Default(false) bool firstTimePasswordReset,
  }) = _ProfileInformation;

  factory ProfileInformation.fromJson(Map<String, dynamic> json) => _$ProfileInformationFromJson(json);
}