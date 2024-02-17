// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_checker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileCheckerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) onCheckCompletion,
    required TResult Function(ProfileInformation information) onUpdateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? onCheckCompletion,
    TResult? Function(ProfileInformation information)? onUpdateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? onCheckCompletion,
    TResult Function(ProfileInformation information)? onUpdateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCheckCompletion value) onCheckCompletion,
    required TResult Function(_OnUpdateProfile value) onUpdateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCheckCompletion value)? onCheckCompletion,
    TResult? Function(_OnUpdateProfile value)? onUpdateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCheckCompletion value)? onCheckCompletion,
    TResult Function(_OnUpdateProfile value)? onUpdateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCheckerEventCopyWith<$Res> {
  factory $ProfileCheckerEventCopyWith(
          ProfileCheckerEvent value, $Res Function(ProfileCheckerEvent) then) =
      _$ProfileCheckerEventCopyWithImpl<$Res, ProfileCheckerEvent>;
}

/// @nodoc
class _$ProfileCheckerEventCopyWithImpl<$Res, $Val extends ProfileCheckerEvent>
    implements $ProfileCheckerEventCopyWith<$Res> {
  _$ProfileCheckerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnCheckCompletionImplCopyWith<$Res> {
  factory _$$OnCheckCompletionImplCopyWith(_$OnCheckCompletionImpl value,
          $Res Function(_$OnCheckCompletionImpl) then) =
      __$$OnCheckCompletionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$OnCheckCompletionImplCopyWithImpl<$Res>
    extends _$ProfileCheckerEventCopyWithImpl<$Res, _$OnCheckCompletionImpl>
    implements _$$OnCheckCompletionImplCopyWith<$Res> {
  __$$OnCheckCompletionImplCopyWithImpl(_$OnCheckCompletionImpl _value,
      $Res Function(_$OnCheckCompletionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$OnCheckCompletionImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnCheckCompletionImpl implements _OnCheckCompletion {
  const _$OnCheckCompletionImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ProfileCheckerEvent.onCheckCompletion(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCheckCompletionImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCheckCompletionImplCopyWith<_$OnCheckCompletionImpl> get copyWith =>
      __$$OnCheckCompletionImplCopyWithImpl<_$OnCheckCompletionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) onCheckCompletion,
    required TResult Function(ProfileInformation information) onUpdateProfile,
  }) {
    return onCheckCompletion(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? onCheckCompletion,
    TResult? Function(ProfileInformation information)? onUpdateProfile,
  }) {
    return onCheckCompletion?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? onCheckCompletion,
    TResult Function(ProfileInformation information)? onUpdateProfile,
    required TResult orElse(),
  }) {
    if (onCheckCompletion != null) {
      return onCheckCompletion(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCheckCompletion value) onCheckCompletion,
    required TResult Function(_OnUpdateProfile value) onUpdateProfile,
  }) {
    return onCheckCompletion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCheckCompletion value)? onCheckCompletion,
    TResult? Function(_OnUpdateProfile value)? onUpdateProfile,
  }) {
    return onCheckCompletion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCheckCompletion value)? onCheckCompletion,
    TResult Function(_OnUpdateProfile value)? onUpdateProfile,
    required TResult orElse(),
  }) {
    if (onCheckCompletion != null) {
      return onCheckCompletion(this);
    }
    return orElse();
  }
}

abstract class _OnCheckCompletion implements ProfileCheckerEvent {
  const factory _OnCheckCompletion(final String userId) =
      _$OnCheckCompletionImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$OnCheckCompletionImplCopyWith<_$OnCheckCompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUpdateProfileImplCopyWith<$Res> {
  factory _$$OnUpdateProfileImplCopyWith(_$OnUpdateProfileImpl value,
          $Res Function(_$OnUpdateProfileImpl) then) =
      __$$OnUpdateProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileInformation information});

  $ProfileInformationCopyWith<$Res> get information;
}

/// @nodoc
class __$$OnUpdateProfileImplCopyWithImpl<$Res>
    extends _$ProfileCheckerEventCopyWithImpl<$Res, _$OnUpdateProfileImpl>
    implements _$$OnUpdateProfileImplCopyWith<$Res> {
  __$$OnUpdateProfileImplCopyWithImpl(
      _$OnUpdateProfileImpl _value, $Res Function(_$OnUpdateProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? information = null,
  }) {
    return _then(_$OnUpdateProfileImpl(
      null == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as ProfileInformation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInformationCopyWith<$Res> get information {
    return $ProfileInformationCopyWith<$Res>(_value.information, (value) {
      return _then(_value.copyWith(information: value));
    });
  }
}

/// @nodoc

class _$OnUpdateProfileImpl implements _OnUpdateProfile {
  const _$OnUpdateProfileImpl(this.information);

  @override
  final ProfileInformation information;

  @override
  String toString() {
    return 'ProfileCheckerEvent.onUpdateProfile(information: $information)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateProfileImpl &&
            (identical(other.information, information) ||
                other.information == information));
  }

  @override
  int get hashCode => Object.hash(runtimeType, information);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateProfileImplCopyWith<_$OnUpdateProfileImpl> get copyWith =>
      __$$OnUpdateProfileImplCopyWithImpl<_$OnUpdateProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) onCheckCompletion,
    required TResult Function(ProfileInformation information) onUpdateProfile,
  }) {
    return onUpdateProfile(information);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? onCheckCompletion,
    TResult? Function(ProfileInformation information)? onUpdateProfile,
  }) {
    return onUpdateProfile?.call(information);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? onCheckCompletion,
    TResult Function(ProfileInformation information)? onUpdateProfile,
    required TResult orElse(),
  }) {
    if (onUpdateProfile != null) {
      return onUpdateProfile(information);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnCheckCompletion value) onCheckCompletion,
    required TResult Function(_OnUpdateProfile value) onUpdateProfile,
  }) {
    return onUpdateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnCheckCompletion value)? onCheckCompletion,
    TResult? Function(_OnUpdateProfile value)? onUpdateProfile,
  }) {
    return onUpdateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnCheckCompletion value)? onCheckCompletion,
    TResult Function(_OnUpdateProfile value)? onUpdateProfile,
    required TResult orElse(),
  }) {
    if (onUpdateProfile != null) {
      return onUpdateProfile(this);
    }
    return orElse();
  }
}

abstract class _OnUpdateProfile implements ProfileCheckerEvent {
  const factory _OnUpdateProfile(final ProfileInformation information) =
      _$OnUpdateProfileImpl;

  ProfileInformation get information;
  @JsonKey(ignore: true)
  _$$OnUpdateProfileImplCopyWith<_$OnUpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileCheckerState {
  ProfileCheckStatus get status => throw _privateConstructorUsedError;
  ProfileInformation? get profile => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCheckerStateCopyWith<ProfileCheckerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCheckerStateCopyWith<$Res> {
  factory $ProfileCheckerStateCopyWith(
          ProfileCheckerState value, $Res Function(ProfileCheckerState) then) =
      _$ProfileCheckerStateCopyWithImpl<$Res, ProfileCheckerState>;
  @useResult
  $Res call(
      {ProfileCheckStatus status, ProfileInformation? profile, String message});

  $ProfileInformationCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ProfileCheckerStateCopyWithImpl<$Res, $Val extends ProfileCheckerState>
    implements $ProfileCheckerStateCopyWith<$Res> {
  _$ProfileCheckerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileCheckStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$ProfileCheckerStateImplCopyWith<$Res>
    implements $ProfileCheckerStateCopyWith<$Res> {
  factory _$$ProfileCheckerStateImplCopyWith(_$ProfileCheckerStateImpl value,
          $Res Function(_$ProfileCheckerStateImpl) then) =
      __$$ProfileCheckerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileCheckStatus status, ProfileInformation? profile, String message});

  @override
  $ProfileInformationCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$ProfileCheckerStateImplCopyWithImpl<$Res>
    extends _$ProfileCheckerStateCopyWithImpl<$Res, _$ProfileCheckerStateImpl>
    implements _$$ProfileCheckerStateImplCopyWith<$Res> {
  __$$ProfileCheckerStateImplCopyWithImpl(_$ProfileCheckerStateImpl _value,
      $Res Function(_$ProfileCheckerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? message = null,
  }) {
    return _then(_$ProfileCheckerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileCheckStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileCheckerStateImpl implements _ProfileCheckerState {
  const _$ProfileCheckerStateImpl(
      {this.status = ProfileCheckStatus.initial,
      this.profile,
      this.message = ''});

  @override
  @JsonKey()
  final ProfileCheckStatus status;
  @override
  final ProfileInformation? profile;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ProfileCheckerState(status: $status, profile: $profile, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCheckerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, profile, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCheckerStateImplCopyWith<_$ProfileCheckerStateImpl> get copyWith =>
      __$$ProfileCheckerStateImplCopyWithImpl<_$ProfileCheckerStateImpl>(
          this, _$identity);
}

abstract class _ProfileCheckerState implements ProfileCheckerState {
  const factory _ProfileCheckerState(
      {final ProfileCheckStatus status,
      final ProfileInformation? profile,
      final String message}) = _$ProfileCheckerStateImpl;

  @override
  ProfileCheckStatus get status;
  @override
  ProfileInformation? get profile;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ProfileCheckerStateImplCopyWith<_$ProfileCheckerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
