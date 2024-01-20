// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileInformation _$ProfileInformationFromJson(Map<String, dynamic> json) {
  return _ProfileInformation.fromJson(json);
}

/// @nodoc
mixin _$ProfileInformation {
  String? get id => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Branch? get branch => throw _privateConstructorUsedError;
  String get profileUrl => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;
  bool get firstTimePasswordReset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileInformationCopyWith<ProfileInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileInformationCopyWith<$Res> {
  factory $ProfileInformationCopyWith(
          ProfileInformation value, $Res Function(ProfileInformation) then) =
      _$ProfileInformationCopyWithImpl<$Res, ProfileInformation>;
  @useResult
  $Res call(
      {String? id,
      String? uid,
      String name,
      Branch? branch,
      String profileUrl,
      Role? role,
      bool firstTimePasswordReset});

  $BranchCopyWith<$Res>? get branch;
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$ProfileInformationCopyWithImpl<$Res, $Val extends ProfileInformation>
    implements $ProfileInformationCopyWith<$Res> {
  _$ProfileInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? name = null,
    Object? branch = freezed,
    Object? profileUrl = null,
    Object? role = freezed,
    Object? firstTimePasswordReset = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      profileUrl: null == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      firstTimePasswordReset: null == firstTimePasswordReset
          ? _value.firstTimePasswordReset
          : firstTimePasswordReset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get branch {
    if (_value.branch == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.branch!, (value) {
      return _then(_value.copyWith(branch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileInformationImplCopyWith<$Res>
    implements $ProfileInformationCopyWith<$Res> {
  factory _$$ProfileInformationImplCopyWith(_$ProfileInformationImpl value,
          $Res Function(_$ProfileInformationImpl) then) =
      __$$ProfileInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? uid,
      String name,
      Branch? branch,
      String profileUrl,
      Role? role,
      bool firstTimePasswordReset});

  @override
  $BranchCopyWith<$Res>? get branch;
  @override
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$ProfileInformationImplCopyWithImpl<$Res>
    extends _$ProfileInformationCopyWithImpl<$Res, _$ProfileInformationImpl>
    implements _$$ProfileInformationImplCopyWith<$Res> {
  __$$ProfileInformationImplCopyWithImpl(_$ProfileInformationImpl _value,
      $Res Function(_$ProfileInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? name = null,
    Object? branch = freezed,
    Object? profileUrl = null,
    Object? role = freezed,
    Object? firstTimePasswordReset = null,
  }) {
    return _then(_$ProfileInformationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch?,
      profileUrl: null == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
      firstTimePasswordReset: null == firstTimePasswordReset
          ? _value.firstTimePasswordReset
          : firstTimePasswordReset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileInformationImpl implements _ProfileInformation {
  const _$ProfileInformationImpl(
      {this.id,
      this.uid,
      this.name = '',
      this.branch,
      this.profileUrl = '',
      this.role,
      this.firstTimePasswordReset = false});

  factory _$ProfileInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileInformationImplFromJson(json);

  @override
  final String? id;
  @override
  final String? uid;
  @override
  @JsonKey()
  final String name;
  @override
  final Branch? branch;
  @override
  @JsonKey()
  final String profileUrl;
  @override
  final Role? role;
  @override
  @JsonKey()
  final bool firstTimePasswordReset;

  @override
  String toString() {
    return 'ProfileInformation(id: $id, uid: $uid, name: $name, branch: $branch, profileUrl: $profileUrl, role: $role, firstTimePasswordReset: $firstTimePasswordReset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInformationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.firstTimePasswordReset, firstTimePasswordReset) ||
                other.firstTimePasswordReset == firstTimePasswordReset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, name, branch,
      profileUrl, role, firstTimePasswordReset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInformationImplCopyWith<_$ProfileInformationImpl> get copyWith =>
      __$$ProfileInformationImplCopyWithImpl<_$ProfileInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileInformationImplToJson(
      this,
    );
  }
}

abstract class _ProfileInformation implements ProfileInformation {
  const factory _ProfileInformation(
      {final String? id,
      final String? uid,
      final String name,
      final Branch? branch,
      final String profileUrl,
      final Role? role,
      final bool firstTimePasswordReset}) = _$ProfileInformationImpl;

  factory _ProfileInformation.fromJson(Map<String, dynamic> json) =
      _$ProfileInformationImpl.fromJson;

  @override
  String? get id;
  @override
  String? get uid;
  @override
  String get name;
  @override
  Branch? get branch;
  @override
  String get profileUrl;
  @override
  Role? get role;
  @override
  bool get firstTimePasswordReset;
  @override
  @JsonKey(ignore: true)
  _$$ProfileInformationImplCopyWith<_$ProfileInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
