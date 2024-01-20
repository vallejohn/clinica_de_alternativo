// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInformationImpl _$$ProfileInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileInformationImpl(
      id: json['id'] as String?,
      uid: json['uid'] as String?,
      name: json['name'] as String? ?? '',
      branch: json['branch'] == null
          ? null
          : Branch.fromJson(json['branch'] as Map<String, dynamic>),
      profileUrl: json['profileUrl'] as String? ?? '',
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      firstTimePasswordReset: json['firstTimePasswordReset'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProfileInformationImplToJson(
        _$ProfileInformationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'branch': instance.branch,
      'profileUrl': instance.profileUrl,
      'role': instance.role,
      'firstTimePasswordReset': instance.firstTimePasswordReset,
    };
