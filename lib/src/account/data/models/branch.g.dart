// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchImpl _$$BranchImplFromJson(Map<String, dynamic> json) => _$BranchImpl(
      id: json['id'] as String?,
      name: json['name'] as String? ?? '',
      type: $enumDecodeNullable(_$BranchTypeEnumMap, json['type']),
      address: json['address'] as String? ?? '',
    );

Map<String, dynamic> _$$BranchImplToJson(_$BranchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$BranchTypeEnumMap[instance.type],
      'address': instance.address,
    };

const _$BranchTypeEnumMap = {
  BranchType.clinic: 'clinic',
  BranchType.warehouse: 'warehouse',
};
