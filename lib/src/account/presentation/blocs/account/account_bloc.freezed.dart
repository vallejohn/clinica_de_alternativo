// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Role? role) onGetDetails,
    required TResult Function(ProfileInformation profile) onUpdateRoleDetails,
    required TResult Function(ProfileInformation profile) onSaveDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, Role? role)? onGetDetails,
    TResult? Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult? Function(ProfileInformation profile)? onSaveDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Role? role)? onGetDetails,
    TResult Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult Function(ProfileInformation profile)? onSaveDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetDetails value) onGetDetails,
    required TResult Function(_OnUpdateDetails value) onUpdateRoleDetails,
    required TResult Function(_OnSaveDetails value) onSaveDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetDetails value)? onGetDetails,
    TResult? Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult? Function(_OnSaveDetails value)? onSaveDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetDetails value)? onGetDetails,
    TResult Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult Function(_OnSaveDetails value)? onSaveDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetDetailsImplCopyWith<$Res> {
  factory _$$OnGetDetailsImplCopyWith(
          _$OnGetDetailsImpl value, $Res Function(_$OnGetDetailsImpl) then) =
      __$$OnGetDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, Role? role});

  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$OnGetDetailsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$OnGetDetailsImpl>
    implements _$$OnGetDetailsImplCopyWith<$Res> {
  __$$OnGetDetailsImplCopyWithImpl(
      _$OnGetDetailsImpl _value, $Res Function(_$OnGetDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = freezed,
  }) {
    return _then(_$OnGetDetailsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc

class _$OnGetDetailsImpl implements _OnGetDetails {
  const _$OnGetDetailsImpl(this.id, {this.role});

  @override
  final String id;
  @override
  final Role? role;

  @override
  String toString() {
    return 'AccountEvent.onGetDetails(id: $id, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetDetailsImplCopyWith<_$OnGetDetailsImpl> get copyWith =>
      __$$OnGetDetailsImplCopyWithImpl<_$OnGetDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Role? role) onGetDetails,
    required TResult Function(ProfileInformation profile) onUpdateRoleDetails,
    required TResult Function(ProfileInformation profile) onSaveDetails,
  }) {
    return onGetDetails(id, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, Role? role)? onGetDetails,
    TResult? Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult? Function(ProfileInformation profile)? onSaveDetails,
  }) {
    return onGetDetails?.call(id, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Role? role)? onGetDetails,
    TResult Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult Function(ProfileInformation profile)? onSaveDetails,
    required TResult orElse(),
  }) {
    if (onGetDetails != null) {
      return onGetDetails(id, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetDetails value) onGetDetails,
    required TResult Function(_OnUpdateDetails value) onUpdateRoleDetails,
    required TResult Function(_OnSaveDetails value) onSaveDetails,
  }) {
    return onGetDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetDetails value)? onGetDetails,
    TResult? Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult? Function(_OnSaveDetails value)? onSaveDetails,
  }) {
    return onGetDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetDetails value)? onGetDetails,
    TResult Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult Function(_OnSaveDetails value)? onSaveDetails,
    required TResult orElse(),
  }) {
    if (onGetDetails != null) {
      return onGetDetails(this);
    }
    return orElse();
  }
}

abstract class _OnGetDetails implements AccountEvent {
  const factory _OnGetDetails(final String id, {final Role? role}) =
      _$OnGetDetailsImpl;

  String get id;
  Role? get role;
  @JsonKey(ignore: true)
  _$$OnGetDetailsImplCopyWith<_$OnGetDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUpdateDetailsImplCopyWith<$Res> {
  factory _$$OnUpdateDetailsImplCopyWith(_$OnUpdateDetailsImpl value,
          $Res Function(_$OnUpdateDetailsImpl) then) =
      __$$OnUpdateDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileInformation profile});

  $ProfileInformationCopyWith<$Res> get profile;
}

/// @nodoc
class __$$OnUpdateDetailsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$OnUpdateDetailsImpl>
    implements _$$OnUpdateDetailsImplCopyWith<$Res> {
  __$$OnUpdateDetailsImplCopyWithImpl(
      _$OnUpdateDetailsImpl _value, $Res Function(_$OnUpdateDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$OnUpdateDetailsImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInformationCopyWith<$Res> get profile {
    return $ProfileInformationCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$OnUpdateDetailsImpl implements _OnUpdateDetails {
  const _$OnUpdateDetailsImpl(this.profile);

  @override
  final ProfileInformation profile;

  @override
  String toString() {
    return 'AccountEvent.onUpdateRoleDetails(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateDetailsImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateDetailsImplCopyWith<_$OnUpdateDetailsImpl> get copyWith =>
      __$$OnUpdateDetailsImplCopyWithImpl<_$OnUpdateDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Role? role) onGetDetails,
    required TResult Function(ProfileInformation profile) onUpdateRoleDetails,
    required TResult Function(ProfileInformation profile) onSaveDetails,
  }) {
    return onUpdateRoleDetails(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, Role? role)? onGetDetails,
    TResult? Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult? Function(ProfileInformation profile)? onSaveDetails,
  }) {
    return onUpdateRoleDetails?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Role? role)? onGetDetails,
    TResult Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult Function(ProfileInformation profile)? onSaveDetails,
    required TResult orElse(),
  }) {
    if (onUpdateRoleDetails != null) {
      return onUpdateRoleDetails(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetDetails value) onGetDetails,
    required TResult Function(_OnUpdateDetails value) onUpdateRoleDetails,
    required TResult Function(_OnSaveDetails value) onSaveDetails,
  }) {
    return onUpdateRoleDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetDetails value)? onGetDetails,
    TResult? Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult? Function(_OnSaveDetails value)? onSaveDetails,
  }) {
    return onUpdateRoleDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetDetails value)? onGetDetails,
    TResult Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult Function(_OnSaveDetails value)? onSaveDetails,
    required TResult orElse(),
  }) {
    if (onUpdateRoleDetails != null) {
      return onUpdateRoleDetails(this);
    }
    return orElse();
  }
}

abstract class _OnUpdateDetails implements AccountEvent {
  const factory _OnUpdateDetails(final ProfileInformation profile) =
      _$OnUpdateDetailsImpl;

  ProfileInformation get profile;
  @JsonKey(ignore: true)
  _$$OnUpdateDetailsImplCopyWith<_$OnUpdateDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSaveDetailsImplCopyWith<$Res> {
  factory _$$OnSaveDetailsImplCopyWith(
          _$OnSaveDetailsImpl value, $Res Function(_$OnSaveDetailsImpl) then) =
      __$$OnSaveDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileInformation profile});

  $ProfileInformationCopyWith<$Res> get profile;
}

/// @nodoc
class __$$OnSaveDetailsImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$OnSaveDetailsImpl>
    implements _$$OnSaveDetailsImplCopyWith<$Res> {
  __$$OnSaveDetailsImplCopyWithImpl(
      _$OnSaveDetailsImpl _value, $Res Function(_$OnSaveDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$OnSaveDetailsImpl(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInformationCopyWith<$Res> get profile {
    return $ProfileInformationCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$OnSaveDetailsImpl implements _OnSaveDetails {
  const _$OnSaveDetailsImpl(this.profile);

  @override
  final ProfileInformation profile;

  @override
  String toString() {
    return 'AccountEvent.onSaveDetails(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSaveDetailsImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSaveDetailsImplCopyWith<_$OnSaveDetailsImpl> get copyWith =>
      __$$OnSaveDetailsImplCopyWithImpl<_$OnSaveDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, Role? role) onGetDetails,
    required TResult Function(ProfileInformation profile) onUpdateRoleDetails,
    required TResult Function(ProfileInformation profile) onSaveDetails,
  }) {
    return onSaveDetails(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, Role? role)? onGetDetails,
    TResult? Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult? Function(ProfileInformation profile)? onSaveDetails,
  }) {
    return onSaveDetails?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, Role? role)? onGetDetails,
    TResult Function(ProfileInformation profile)? onUpdateRoleDetails,
    TResult Function(ProfileInformation profile)? onSaveDetails,
    required TResult orElse(),
  }) {
    if (onSaveDetails != null) {
      return onSaveDetails(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetDetails value) onGetDetails,
    required TResult Function(_OnUpdateDetails value) onUpdateRoleDetails,
    required TResult Function(_OnSaveDetails value) onSaveDetails,
  }) {
    return onSaveDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetDetails value)? onGetDetails,
    TResult? Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult? Function(_OnSaveDetails value)? onSaveDetails,
  }) {
    return onSaveDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetDetails value)? onGetDetails,
    TResult Function(_OnUpdateDetails value)? onUpdateRoleDetails,
    TResult Function(_OnSaveDetails value)? onSaveDetails,
    required TResult orElse(),
  }) {
    if (onSaveDetails != null) {
      return onSaveDetails(this);
    }
    return orElse();
  }
}

abstract class _OnSaveDetails implements AccountEvent {
  const factory _OnSaveDetails(final ProfileInformation profile) =
      _$OnSaveDetailsImpl;

  ProfileInformation get profile;
  @JsonKey(ignore: true)
  _$$OnSaveDetailsImplCopyWith<_$OnSaveDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  AccountStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ProfileInformation? get profile => throw _privateConstructorUsedError;
  Role? get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {AccountStatus status,
      String message,
      ProfileInformation? profile,
      Role? role});

  $ProfileInformationCopyWith<$Res>? get profile;
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? profile = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInformationCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileInformationCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
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
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccountStatus status,
      String message,
      ProfileInformation? profile,
      Role? role});

  @override
  $ProfileInformationCopyWith<$Res>? get profile;
  @override
  $RoleCopyWith<$Res>? get role;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? profile = freezed,
    Object? role = freezed,
  }) {
    return _then(_$AccountStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AccountStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role?,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl(
      {this.status = AccountStatus.initial,
      this.message = '',
      this.profile,
      this.role});

  @override
  @JsonKey()
  final AccountStatus status;
  @override
  @JsonKey()
  final String message;
  @override
  final ProfileInformation? profile;
  @override
  final Role? role;

  @override
  String toString() {
    return 'AccountState(status: $status, message: $message, profile: $profile, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, profile, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState(
      {final AccountStatus status,
      final String message,
      final ProfileInformation? profile,
      final Role? role}) = _$AccountStateImpl;

  @override
  AccountStatus get status;
  @override
  String get message;
  @override
  ProfileInformation? get profile;
  @override
  Role? get role;
  @override
  @JsonKey(ignore: true)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
