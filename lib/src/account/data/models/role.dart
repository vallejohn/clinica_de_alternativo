import 'package:freezed_annotation/freezed_annotation.dart';

import 'module.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
class Role with _$Role{
  const factory Role({
    String? id,
    @Default('') String code,
    @Default('') String name,
    @Default([]) List<Module> modulesAttached,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}