// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleEventCopyWith<$Res> {
  factory $RoleEventCopyWith(RoleEvent value, $Res Function(RoleEvent) then) =
      _$RoleEventCopyWithImpl<$Res, RoleEvent>;
}

/// @nodoc
class _$RoleEventCopyWithImpl<$Res, $Val extends RoleEvent>
    implements $RoleEventCopyWith<$Res> {
  _$RoleEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<Role> modules});
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modules = null,
  }) {
    return _then(_$OnStartedImpl(
      null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Role>,
    ));
  }
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl(final List<Role> modules) : _modules = modules;

  final List<Role> _modules;
  @override
  List<Role> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'RoleEvent.onStarted(modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartedImpl &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      __$$OnStartedImplCopyWithImpl<_$OnStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) {
    return onStarted(modules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) {
    return onStarted?.call(modules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(modules);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements RoleEvent {
  const factory _OnStarted(final List<Role> modules) = _$OnStartedImpl;

  List<Role> get modules;
  @JsonKey(ignore: true)
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFetchImplCopyWith<$Res> {
  factory _$$OnFetchImplCopyWith(
          _$OnFetchImpl value, $Res Function(_$OnFetchImpl) then) =
      __$$OnFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$OnFetchImpl>
    implements _$$OnFetchImplCopyWith<$Res> {
  __$$OnFetchImplCopyWithImpl(
      _$OnFetchImpl _value, $Res Function(_$OnFetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnFetchImpl implements _OnFetch {
  const _$OnFetchImpl();

  @override
  String toString() {
    return 'RoleEvent.onFetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) {
    return onFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) {
    return onFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(this);
    }
    return orElse();
  }
}

abstract class _OnFetch implements RoleEvent {
  const factory _OnFetch() = _$OnFetchImpl;
}

/// @nodoc
abstract class _$$OnAddImplCopyWith<$Res> {
  factory _$$OnAddImplCopyWith(
          _$OnAddImpl value, $Res Function(_$OnAddImpl) then) =
      __$$OnAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Role role});

  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$OnAddImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$OnAddImpl>
    implements _$$OnAddImplCopyWith<$Res> {
  __$$OnAddImplCopyWithImpl(
      _$OnAddImpl _value, $Res Function(_$OnAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$OnAddImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc

class _$OnAddImpl implements _OnAdd {
  const _$OnAddImpl(this.role);

  @override
  final Role role;

  @override
  String toString() {
    return 'RoleEvent.onAdd(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      __$$OnAddImplCopyWithImpl<_$OnAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) {
    return onAdd(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) {
    return onAdd?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements RoleEvent {
  const factory _OnAdd(final Role role) = _$OnAddImpl;

  Role get role;
  @JsonKey(ignore: true)
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEditImplCopyWith<$Res> {
  factory _$$OnEditImplCopyWith(
          _$OnEditImpl value, $Res Function(_$OnEditImpl) then) =
      __$$OnEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Role role});

  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$OnEditImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$OnEditImpl>
    implements _$$OnEditImplCopyWith<$Res> {
  __$$OnEditImplCopyWithImpl(
      _$OnEditImpl _value, $Res Function(_$OnEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$OnEditImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc

class _$OnEditImpl implements _OnEdit {
  const _$OnEditImpl(this.role);

  @override
  final Role role;

  @override
  String toString() {
    return 'RoleEvent.onEdit(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEditImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEditImplCopyWith<_$OnEditImpl> get copyWith =>
      __$$OnEditImplCopyWithImpl<_$OnEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) {
    return onEdit(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) {
    return onEdit?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(this);
    }
    return orElse();
  }
}

abstract class _OnEdit implements RoleEvent {
  const factory _OnEdit(final Role role) = _$OnEditImpl;

  Role get role;
  @JsonKey(ignore: true)
  _$$OnEditImplCopyWith<_$OnEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUpdateImplCopyWith<$Res> {
  factory _$$OnUpdateImplCopyWith(
          _$OnUpdateImpl value, $Res Function(_$OnUpdateImpl) then) =
      __$$OnUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Role role});

  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$OnUpdateImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$OnUpdateImpl>
    implements _$$OnUpdateImplCopyWith<$Res> {
  __$$OnUpdateImplCopyWithImpl(
      _$OnUpdateImpl _value, $Res Function(_$OnUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$OnUpdateImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc

class _$OnUpdateImpl implements _OnUpdate {
  const _$OnUpdateImpl(this.role);

  @override
  final Role role;

  @override
  String toString() {
    return 'RoleEvent.onUpdate(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdateImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdateImplCopyWith<_$OnUpdateImpl> get copyWith =>
      __$$OnUpdateImplCopyWithImpl<_$OnUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) {
    return onUpdate(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) {
    return onUpdate?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onUpdate != null) {
      return onUpdate(this);
    }
    return orElse();
  }
}

abstract class _OnUpdate implements RoleEvent {
  const factory _OnUpdate(final Role role) = _$OnUpdateImpl;

  Role get role;
  @JsonKey(ignore: true)
  _$$OnUpdateImplCopyWith<_$OnUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeleteImplCopyWith<$Res> {
  factory _$$OnDeleteImplCopyWith(
          _$OnDeleteImpl value, $Res Function(_$OnDeleteImpl) then) =
      __$$OnDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Role role});

  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$OnDeleteImplCopyWithImpl<$Res>
    extends _$RoleEventCopyWithImpl<$Res, _$OnDeleteImpl>
    implements _$$OnDeleteImplCopyWith<$Res> {
  __$$OnDeleteImplCopyWithImpl(
      _$OnDeleteImpl _value, $Res Function(_$OnDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$OnDeleteImpl(
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value));
    });
  }
}

/// @nodoc

class _$OnDeleteImpl implements _OnDelete {
  const _$OnDeleteImpl(this.role);

  @override
  final Role role;

  @override
  String toString() {
    return 'RoleEvent.onDelete(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      __$$OnDeleteImplCopyWithImpl<_$OnDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Role> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Role role) onAdd,
    required TResult Function(Role role) onEdit,
    required TResult Function(Role role) onUpdate,
    required TResult Function(Role role) onDelete,
  }) {
    return onDelete(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Role> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Role role)? onAdd,
    TResult? Function(Role role)? onEdit,
    TResult? Function(Role role)? onUpdate,
    TResult? Function(Role role)? onDelete,
  }) {
    return onDelete?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Role> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Role role)? onAdd,
    TResult Function(Role role)? onEdit,
    TResult Function(Role role)? onUpdate,
    TResult Function(Role role)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnUpdate value) onUpdate,
    required TResult Function(_OnDelete value) onDelete,
  }) {
    return onDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnUpdate value)? onUpdate,
    TResult? Function(_OnDelete value)? onDelete,
  }) {
    return onDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnUpdate value)? onUpdate,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(this);
    }
    return orElse();
  }
}

abstract class _OnDelete implements RoleEvent {
  const factory _OnDelete(final Role role) = _$OnDeleteImpl;

  Role get role;
  @JsonKey(ignore: true)
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RoleState {
  RoleStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ErrorCode? get errorCode => throw _privateConstructorUsedError;
  List<Role> get roles => throw _privateConstructorUsedError;
  bool get accessible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoleStateCopyWith<RoleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleStateCopyWith<$Res> {
  factory $RoleStateCopyWith(RoleState value, $Res Function(RoleState) then) =
      _$RoleStateCopyWithImpl<$Res, RoleState>;
  @useResult
  $Res call(
      {RoleStatus status,
      String message,
      ErrorCode? errorCode,
      List<Role> roles,
      bool accessible});
}

/// @nodoc
class _$RoleStateCopyWithImpl<$Res, $Val extends RoleState>
    implements $RoleStateCopyWith<$Res> {
  _$RoleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errorCode = freezed,
    Object? roles = null,
    Object? accessible = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoleStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      accessible: null == accessible
          ? _value.accessible
          : accessible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleStateImplCopyWith<$Res>
    implements $RoleStateCopyWith<$Res> {
  factory _$$RoleStateImplCopyWith(
          _$RoleStateImpl value, $Res Function(_$RoleStateImpl) then) =
      __$$RoleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoleStatus status,
      String message,
      ErrorCode? errorCode,
      List<Role> roles,
      bool accessible});
}

/// @nodoc
class __$$RoleStateImplCopyWithImpl<$Res>
    extends _$RoleStateCopyWithImpl<$Res, _$RoleStateImpl>
    implements _$$RoleStateImplCopyWith<$Res> {
  __$$RoleStateImplCopyWithImpl(
      _$RoleStateImpl _value, $Res Function(_$RoleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errorCode = freezed,
    Object? roles = null,
    Object? accessible = null,
  }) {
    return _then(_$RoleStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RoleStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      accessible: null == accessible
          ? _value.accessible
          : accessible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RoleStateImpl implements _RoleState {
  const _$RoleStateImpl(
      {this.status = RoleStatus.initial,
      this.message = '',
      this.errorCode,
      final List<Role> roles = const [],
      this.accessible = false})
      : _roles = roles;

  @override
  @JsonKey()
  final RoleStatus status;
  @override
  @JsonKey()
  final String message;
  @override
  final ErrorCode? errorCode;
  final List<Role> _roles;
  @override
  @JsonKey()
  List<Role> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @JsonKey()
  final bool accessible;

  @override
  String toString() {
    return 'RoleState(status: $status, message: $message, errorCode: $errorCode, roles: $roles, accessible: $accessible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.accessible, accessible) ||
                other.accessible == accessible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, errorCode,
      const DeepCollectionEquality().hash(_roles), accessible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleStateImplCopyWith<_$RoleStateImpl> get copyWith =>
      __$$RoleStateImplCopyWithImpl<_$RoleStateImpl>(this, _$identity);
}

abstract class _RoleState implements RoleState {
  const factory _RoleState(
      {final RoleStatus status,
      final String message,
      final ErrorCode? errorCode,
      final List<Role> roles,
      final bool accessible}) = _$RoleStateImpl;

  @override
  RoleStatus get status;
  @override
  String get message;
  @override
  ErrorCode? get errorCode;
  @override
  List<Role> get roles;
  @override
  bool get accessible;
  @override
  @JsonKey(ignore: true)
  _$$RoleStateImplCopyWith<_$RoleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
