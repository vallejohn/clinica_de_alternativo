// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInformationImpl _$$ProfileInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileInformationImpl(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      branch: json['branch'] as String? ?? '',
      profileUrl: json['profileUrl'] as String? ?? '',
      role: json['role'] as String? ?? '',
      firstTimePasswordReset: json['firstTimePasswordReset'] as bool? ?? false,
    );

Map<String, dynamic> _$$ProfileInformationImplToJson(
        _$ProfileInformationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'branch': instance.branch,
      'profileUrl': instance.profileUrl,
      'role': instance.role,
      'firstTimePasswordReset': instance.firstTimePasswordReset,
    };
