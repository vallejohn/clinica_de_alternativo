import 'package:freezed_annotation/freezed_annotation.dart';

part 'module.freezed.dart';
part 'module.g.dart';

@freezed
class Module with _$Module{
  const factory Module({
    String? id,
    @Default('') String code,
    @Default('') String name,
    @Default('') String description,
    @Default(false) bool canView,
    @Default(false) bool canEdit,
  }) = _Module;

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
}