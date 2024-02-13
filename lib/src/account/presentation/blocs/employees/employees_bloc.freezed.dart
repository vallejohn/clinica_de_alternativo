// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileInformation> employees) onStarted,
    required TResult Function() onGetList,
    required TResult Function(AddAccountParams params) onAdd,
    required TResult Function(ProfileInformation profile) onUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileInformation> employees)? onStarted,
    TResult? Function()? onGetList,
    TResult? Function(AddAccountParams params)? onAdd,
    TResult? Function(ProfileInformation profile)? onUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileInformation> employees)? onStarted,
    TResult Function()? onGetList,
    TResult Function(AddAccountParams params)? onAdd,
    TResult Function(ProfileInformation profile)? onUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnGetList value) onGetList,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnUpdate value) onUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnGetList value)? onGetList,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnUpdate value)? onUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnGetList value)? onGetList,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnUpdate value)? onUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesEventCopyWith<$Res> {
  factory $EmployeesEventCopyWith(
          EmployeesEvent value, $Res Function(EmployeesEvent) then) =
      _$EmployeesEventCopyWithImpl<$Res, EmployeesEvent>;
}

/// @nodoc
class _$EmployeesEventCopyWithImpl<$Res, $Val extends EmployeesEvent>
    implements $EmployeesEventCopyWith<$Res> {
  _$EmployeesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnStartedImplCopyWith<$Res> {
  factory _$$OnStartedImplCopyWith(
          _$OnStartedImpl value, $Res Function(_$OnStartedImpl) then) =
      __$$OnStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProfileInformation> employees});
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$OnStartedImpl(
      null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<ProfileInformation>,
    ));
  }
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl(final List<ProfileInformation> employees)
      : _employees = employees;

  final List<ProfileInformation> _employees;
  @override
  List<ProfileInformation> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeesEvent.onStarted(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartedImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      __$$OnStartedImplCopyWithImpl<_$OnStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileInformation> employees) onStarted,
    required TResult Function() onGetList,
    required TResult Function(AddAccountParams params) onAdd,
    required TResult Function(ProfileInformation profile) onUpdate,
  }) {
    return onStarted(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileInformation> employees)? onStarted,
    TResult? Function()? onGetList,
    TResult? Function(AddAccountParams params)? onAdd,
    TResult? Function(ProfileInformation profile)? onUpdate,
  }) {
    return onStarted?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileInformation> employees)? onStarted,
    TResult Function()? onGetList,
    TResult Function(AddAccountParams params)? onAdd,
    TResult Function(ProfileInformation profile)? onUpdate,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnGetList value) onGetList,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnUpdate value) onUpdate,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnGetList value)? onGetList,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnUpdate value)? onUpdate,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnGetList value)? onGetList,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnUpdate value)? onUpdate,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements EmployeesEvent {
  const factory _OnStarted(final List<ProfileInformation> employees) =
      _$OnStartedImpl;

  List<ProfileInformation> get employees;
  @JsonKey(ignore: true)
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnGetListImplCopyWith<$Res> {
  factory _$$OnGetListImplCopyWith(
          _$OnGetListImpl value, $Res Function(_$OnGetListImpl) then) =
      __$$OnGetListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGetListImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$OnGetListImpl>
    implements _$$OnGetListImplCopyWith<$Res> {
  __$$OnGetListImplCopyWithImpl(
      _$OnGetListImpl _value, $Res Function(_$OnGetListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGetListImpl implements _OnGetList {
  const _$OnGetListImpl();

  @override
  String toString() {
    return 'EmployeesEvent.onGetList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnGetListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileInformation> employees) onStarted,
    required TResult Function() onGetList,
    required TResult Function(AddAccountParams params) onAdd,
    required TResult Function(ProfileInformation profile) onUpdate,
  }) {
    return onGetList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileInformation> employees)? onStarted,
    TResult? Function()? onGetList,
    TResult? Function(AddAccountParams params)? onAdd,
    TResult? Function(ProfileInformation profile)? onUpdate,
  }) {
    return onGetList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileInformation> employees)? onStarted,
    TResult Function()? onGetList,
    TResult Function(AddAccountParams params)? onAdd,
    TResult Function(ProfileInformation profile)? onUpdate,
    required TResult orElse(),
  }) {
    if (onGetList != null) {
      return onGetList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnGetList value) onGetList,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnUpdate value) onUpdate,
  }) {
    return onGetList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnGetList value)? onGetList,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnUpdate value)? onUpdate,
  }) {
    return onGetList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnGetList value)? onGetList,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnUpdate value)? onUpdate,
    required TResult orElse(),
  }) {
    if (onGetList != null) {
      return onGetList(this);
    }
    return orElse();
  }
}

abstract class _OnGetList implements EmployeesEvent {
  const factory _OnGetList() = _$OnGetListImpl;
}

/// @nodoc
abstract class _$$OnAddImplCopyWith<$Res> {
  factory _$$OnAddImplCopyWith(
          _$OnAddImpl value, $Res Function(_$OnAddImpl) then) =
      __$$OnAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddAccountParams params});
}

/// @nodoc
class __$$OnAddImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$OnAddImpl>
    implements _$$OnAddImplCopyWith<$Res> {
  __$$OnAddImplCopyWithImpl(
      _$OnAddImpl _value, $Res Function(_$OnAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$OnAddImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as AddAccountParams,
    ));
  }
}

/// @nodoc

class _$OnAddImpl implements _OnAdd {
  const _$OnAddImpl(this.params);

  @override
  final AddAccountParams params;

  @override
  String toString() {
    return 'EmployeesEvent.onAdd(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      __$$OnAddImplCopyWithImpl<_$OnAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileInformation> employees) onStarted,
    required TResult Function() onGetList,
    required TResult Function(AddAccountParams params) onAdd,
    required TResult Function(ProfileInformation profile) onUpdate,
  }) {
    return onAdd(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileInformation> employees)? onStarted,
    TResult? Function()? onGetList,
    TResult? Function(AddAccountParams params)? onAdd,
    TResult? Function(ProfileInformation profile)? onUpdate,
  }) {
    return onAdd?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileInformation> employees)? onStarted,
    TResult Function()? onGetList,
    TResult Function(AddAccountParams params)? onAdd,
    TResult Function(ProfileInformation profile)? onUpdate,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnGetList value) onGetList,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnUpdate value) onUpdate,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnGetList value)? onGetList,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnUpdate value)? onUpdate,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnGetList value)? onGetList,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnUpdate value)? onUpdate,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements EmployeesEvent {
  const factory _OnAdd(final AddAccountParams params) = _$OnAddImpl;

  AddAccountParams get params;
  @JsonKey(ignore: true)
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUpdateImplCopyWith<$Res> {
  factory _$$OnUpdateImplCopyWith(
          _$OnUpdateImpl value, $Res Function(_$OnUpdateImpl) then) =
      __$$OnUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileInformation profile});

  $ProfileInformationCopyWith<$Res> get profile;
}

/// @nodoc
class __$$OnUpdateImplCopyWithImpl<$Res>
    extends _$EmployeesEventCopyWithImpl<$Res, _$OnUpdateImpl>
    implements _$$OnUpdateImplCopyWith<$Res> {
  __$$OnUpdateImplCopyWithImpl(
      _$OnUpdateImpl _value, $Res Function(_$OnUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$OnUpdateImpl(
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

class _$OnUpdateImpl implements _OnUpdate {
  const _$OnUpdateImpl(this.profile);

  @override
  final ProfileInformation profile;

  @override
  String toString() {
    return 'EmployeesEvent.onUpdate(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateImplCopyWith<_$OnUpdateImpl> get copyWith =>
      __$$OnUpdateImplCopyWithImpl<_$OnUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ProfileInformation> employees) onStarted,
    required TResult Function() onGetList,
    required TResult Function(AddAccountParams params) onAdd,
    required TResult Function(ProfileInformation profile) onUpdate,
  }) {
    return onUpdate(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ProfileInformation> employees)? onStarted,
    TResult? Function()? onGetList,
    TResult? Function(AddAccountParams params)? onAdd,
    TResult? Function(ProfileInformation profile)? onUpdate,
  }) {
    return onUpdate?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ProfileInformation> employees)? onStarted,
    TResult Function()? onGetList,
    TResult Function(AddAccountParams params)? onAdd,
    TResult Function(ProfileInformation profile)? onUpdate,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnGetList value) onGetList,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnUpdate value) onUpdate,
  }) {
    return onUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnGetList value)? onGetList,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnUpdate value)? onUpdate,
  }) {
    return onUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnGetList value)? onGetList,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnUpdate value)? onUpdate,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(this);
    }
    return orElse();
  }
}

abstract class _OnUpdate implements EmployeesEvent {
  const factory _OnUpdate(final ProfileInformation profile) = _$OnUpdateImpl;

  ProfileInformation get profile;
  @JsonKey(ignore: true)
  _$$OnUpdateImplCopyWith<_$OnUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeesState {
  EmployeeStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ProfileInformation> get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeesStateCopyWith<EmployeesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesStateCopyWith<$Res> {
  factory $EmployeesStateCopyWith(
          EmployeesState value, $Res Function(EmployeesState) then) =
      _$EmployeesStateCopyWithImpl<$Res, EmployeesState>;
  @useResult
  $Res call(
      {EmployeeStatus status,
      String message,
      List<ProfileInformation> employees});
}

/// @nodoc
class _$EmployeesStateCopyWithImpl<$Res, $Val extends EmployeesState>
    implements $EmployeesStateCopyWith<$Res> {
  _$EmployeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? employees = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmployeeStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<ProfileInformation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeesStateImplCopyWith<$Res>
    implements $EmployeesStateCopyWith<$Res> {
  factory _$$EmployeesStateImplCopyWith(_$EmployeesStateImpl value,
          $Res Function(_$EmployeesStateImpl) then) =
      __$$EmployeesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmployeeStatus status,
      String message,
      List<ProfileInformation> employees});
}

/// @nodoc
class __$$EmployeesStateImplCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$EmployeesStateImpl>
    implements _$$EmployeesStateImplCopyWith<$Res> {
  __$$EmployeesStateImplCopyWithImpl(
      _$EmployeesStateImpl _value, $Res Function(_$EmployeesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? employees = null,
  }) {
    return _then(_$EmployeesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EmployeeStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<ProfileInformation>,
    ));
  }
}

/// @nodoc

class _$EmployeesStateImpl implements _EmployeesState {
  const _$EmployeesStateImpl(
      {this.status = EmployeeStatus.initial,
      this.message = '',
      final List<ProfileInformation> employees = const []})
      : _employees = employees;

  @override
  @JsonKey()
  final EmployeeStatus status;
  @override
  @JsonKey()
  final String message;
  final List<ProfileInformation> _employees;
  @override
  @JsonKey()
  List<ProfileInformation> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeesState(status: $status, message: $message, employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeesStateImplCopyWith<_$EmployeesStateImpl> get copyWith =>
      __$$EmployeesStateImplCopyWithImpl<_$EmployeesStateImpl>(
          this, _$identity);
}

abstract class _EmployeesState implements EmployeesState {
  const factory _EmployeesState(
      {final EmployeeStatus status,
      final String message,
      final List<ProfileInformation> employees}) = _$EmployeesStateImpl;

  @override
  EmployeeStatus get status;
  @override
  String get message;
  @override
  List<ProfileInformation> get employees;
  @override
  @JsonKey(ignore: true)
  _$$EmployeesStateImplCopyWith<_$EmployeesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
