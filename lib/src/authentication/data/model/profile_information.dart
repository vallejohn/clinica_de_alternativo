import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_information.freezed.dart';
part 'profile_information.g.dart';

@freezed
class ProfileInformation with _$ProfileInformation{
  const factory ProfileInformation({
    String? id,
    @Default('') String name,
    @Default('') String branch,
    @Default('') String profileUrl,
    @Default('') String role,
    @Default(false) bool firstTimePasswordReset,
  }) = _ProfileInformation;

  factory ProfileInformation.fromJson(Map<String, dynamic> json) => _$ProfileInformationFromJson(json);
}