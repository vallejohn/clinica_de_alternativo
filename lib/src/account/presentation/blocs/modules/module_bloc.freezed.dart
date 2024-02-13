// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ModuleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Module> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Module module) onAdd,
    required TResult Function(Module module) onEdit,
    required TResult Function(Module module) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Module> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Module module)? onAdd,
    TResult? Function(Module module)? onEdit,
    TResult? Function(Module module)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Module> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Module module)? onAdd,
    TResult Function(Module module)? onEdit,
    TResult Function(Module module)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDelete value) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDelete value)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleEventCopyWith<$Res> {
  factory $ModuleEventCopyWith(
          ModuleEvent value, $Res Function(ModuleEvent) then) =
      _$ModuleEventCopyWithImpl<$Res, ModuleEvent>;
}

/// @nodoc
class _$ModuleEventCopyWithImpl<$Res, $Val extends ModuleEvent>
    implements $ModuleEventCopyWith<$Res> {
  _$ModuleEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<Module> modules});
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$OnStartedImpl>
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
              as List<Module>,
    ));
  }
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl(final List<Module> modules) : _modules = modules;

  final List<Module> _modules;
  @override
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'ModuleEvent.onStarted(modules: $modules)';
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
    required TResult Function(List<Module> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Module module) onAdd,
    required TResult Function(Module module) onEdit,
    required TResult Function(Module module) onDelete,
  }) {
    return onStarted(modules);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Module> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Module module)? onAdd,
    TResult? Function(Module module)? onEdit,
    TResult? Function(Module module)? onDelete,
  }) {
    return onStarted?.call(modules);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Module> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Module module)? onAdd,
    TResult Function(Module module)? onEdit,
    TResult Function(Module module)? onDelete,
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
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements ModuleEvent {
  const factory _OnStarted(final List<Module> modules) = _$OnStartedImpl;

  List<Module> get modules;
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
    extends _$ModuleEventCopyWithImpl<$Res, _$OnFetchImpl>
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
    return 'ModuleEvent.onFetch()';
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
    required TResult Function(List<Module> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Module module) onAdd,
    required TResult Function(Module module) onEdit,
    required TResult Function(Module module) onDelete,
  }) {
    return onFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Module> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Module module)? onAdd,
    TResult? Function(Module module)? onEdit,
    TResult? Function(Module module)? onDelete,
  }) {
    return onFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Module> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Module module)? onAdd,
    TResult Function(Module module)? onEdit,
    TResult Function(Module module)? onDelete,
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
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(this);
    }
    return orElse();
  }
}

abstract class _OnFetch implements ModuleEvent {
  const factory _OnFetch() = _$OnFetchImpl;
}

/// @nodoc
abstract class _$$OnAddImplCopyWith<$Res> {
  factory _$$OnAddImplCopyWith(
          _$OnAddImpl value, $Res Function(_$OnAddImpl) then) =
      __$$OnAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Module module});

  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class __$$OnAddImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$OnAddImpl>
    implements _$$OnAddImplCopyWith<$Res> {
  __$$OnAddImplCopyWithImpl(
      _$OnAddImpl _value, $Res Function(_$OnAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
  }) {
    return _then(_$OnAddImpl(
      null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ModuleCopyWith<$Res> get module {
    return $ModuleCopyWith<$Res>(_value.module, (value) {
      return _then(_value.copyWith(module: value));
    });
  }
}

/// @nodoc

class _$OnAddImpl implements _OnAdd {
  const _$OnAddImpl(this.module);

  @override
  final Module module;

  @override
  String toString() {
    return 'ModuleEvent.onAdd(module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddImpl &&
            (identical(other.module, module) || other.module == module));
  }

  @override
  int get hashCode => Object.hash(runtimeType, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      __$$OnAddImplCopyWithImpl<_$OnAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Module> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Module module) onAdd,
    required TResult Function(Module module) onEdit,
    required TResult Function(Module module) onDelete,
  }) {
    return onAdd(module);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Module> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Module module)? onAdd,
    TResult? Function(Module module)? onEdit,
    TResult? Function(Module module)? onDelete,
  }) {
    return onAdd?.call(module);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Module> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Module module)? onAdd,
    TResult Function(Module module)? onEdit,
    TResult Function(Module module)? onDelete,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(module);
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
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements ModuleEvent {
  const factory _OnAdd(final Module module) = _$OnAddImpl;

  Module get module;
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
  $Res call({Module module});

  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class __$$OnEditImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$OnEditImpl>
    implements _$$OnEditImplCopyWith<$Res> {
  __$$OnEditImplCopyWithImpl(
      _$OnEditImpl _value, $Res Function(_$OnEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
  }) {
    return _then(_$OnEditImpl(
      null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ModuleCopyWith<$Res> get module {
    return $ModuleCopyWith<$Res>(_value.module, (value) {
      return _then(_value.copyWith(module: value));
    });
  }
}

/// @nodoc

class _$OnEditImpl implements _OnEdit {
  const _$OnEditImpl(this.module);

  @override
  final Module module;

  @override
  String toString() {
    return 'ModuleEvent.onEdit(module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEditImpl &&
            (identical(other.module, module) || other.module == module));
  }

  @override
  int get hashCode => Object.hash(runtimeType, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEditImplCopyWith<_$OnEditImpl> get copyWith =>
      __$$OnEditImplCopyWithImpl<_$OnEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Module> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Module module) onAdd,
    required TResult Function(Module module) onEdit,
    required TResult Function(Module module) onDelete,
  }) {
    return onEdit(module);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Module> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Module module)? onAdd,
    TResult? Function(Module module)? onEdit,
    TResult? Function(Module module)? onDelete,
  }) {
    return onEdit?.call(module);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Module> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Module module)? onAdd,
    TResult Function(Module module)? onEdit,
    TResult Function(Module module)? onDelete,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(module);
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
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(this);
    }
    return orElse();
  }
}

abstract class _OnEdit implements ModuleEvent {
  const factory _OnEdit(final Module module) = _$OnEditImpl;

  Module get module;
  @JsonKey(ignore: true)
  _$$OnEditImplCopyWith<_$OnEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnDeleteImplCopyWith<$Res> {
  factory _$$OnDeleteImplCopyWith(
          _$OnDeleteImpl value, $Res Function(_$OnDeleteImpl) then) =
      __$$OnDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Module module});

  $ModuleCopyWith<$Res> get module;
}

/// @nodoc
class __$$OnDeleteImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$OnDeleteImpl>
    implements _$$OnDeleteImplCopyWith<$Res> {
  __$$OnDeleteImplCopyWithImpl(
      _$OnDeleteImpl _value, $Res Function(_$OnDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? module = null,
  }) {
    return _then(_$OnDeleteImpl(
      null == module
          ? _value.module
          : module // ignore: cast_nullable_to_non_nullable
              as Module,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ModuleCopyWith<$Res> get module {
    return $ModuleCopyWith<$Res>(_value.module, (value) {
      return _then(_value.copyWith(module: value));
    });
  }
}

/// @nodoc

class _$OnDeleteImpl implements _OnDelete {
  const _$OnDeleteImpl(this.module);

  @override
  final Module module;

  @override
  String toString() {
    return 'ModuleEvent.onDelete(module: $module)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteImpl &&
            (identical(other.module, module) || other.module == module));
  }

  @override
  int get hashCode => Object.hash(runtimeType, module);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      __$$OnDeleteImplCopyWithImpl<_$OnDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Module> modules) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Module module) onAdd,
    required TResult Function(Module module) onEdit,
    required TResult Function(Module module) onDelete,
  }) {
    return onDelete(module);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Module> modules)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Module module)? onAdd,
    TResult? Function(Module module)? onEdit,
    TResult? Function(Module module)? onDelete,
  }) {
    return onDelete?.call(module);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Module> modules)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Module module)? onAdd,
    TResult Function(Module module)? onEdit,
    TResult Function(Module module)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(module);
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
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(this);
    }
    return orElse();
  }
}

abstract class _OnDelete implements ModuleEvent {
  const factory _OnDelete(final Module module) = _$OnDeleteImpl;

  Module get module;
  @JsonKey(ignore: true)
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModuleState {
  ModuleStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Module> get modules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModuleStateCopyWith<ModuleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleStateCopyWith<$Res> {
  factory $ModuleStateCopyWith(
          ModuleState value, $Res Function(ModuleState) then) =
      _$ModuleStateCopyWithImpl<$Res, ModuleState>;
  @useResult
  $Res call({ModuleStatus status, String message, List<Module> modules});
}

/// @nodoc
class _$ModuleStateCopyWithImpl<$Res, $Val extends ModuleState>
    implements $ModuleStateCopyWith<$Res> {
  _$ModuleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? modules = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModuleStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleStateImplCopyWith<$Res>
    implements $ModuleStateCopyWith<$Res> {
  factory _$$ModuleStateImplCopyWith(
          _$ModuleStateImpl value, $Res Function(_$ModuleStateImpl) then) =
      __$$ModuleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ModuleStatus status, String message, List<Module> modules});
}

/// @nodoc
class __$$ModuleStateImplCopyWithImpl<$Res>
    extends _$ModuleStateCopyWithImpl<$Res, _$ModuleStateImpl>
    implements _$$ModuleStateImplCopyWith<$Res> {
  __$$ModuleStateImplCopyWithImpl(
      _$ModuleStateImpl _value, $Res Function(_$ModuleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? modules = null,
  }) {
    return _then(_$ModuleStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ModuleStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
    ));
  }
}

/// @nodoc

class _$ModuleStateImpl implements _ModuleState {
  const _$ModuleStateImpl(
      {this.status = ModuleStatus.initial,
      this.message = '',
      final List<Module> modules = const []})
      : _modules = modules;

  @override
  @JsonKey()
  final ModuleStatus status;
  @override
  @JsonKey()
  final String message;
  final List<Module> _modules;
  @override
  @JsonKey()
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  @override
  String toString() {
    return 'ModuleState(status: $status, message: $message, modules: $modules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._modules, _modules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_modules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleStateImplCopyWith<_$ModuleStateImpl> get copyWith =>
      __$$ModuleStateImplCopyWithImpl<_$ModuleStateImpl>(this, _$identity);
}

abstract class _ModuleState implements ModuleState {
  const factory _ModuleState(
      {final ModuleStatus status,
      final String message,
      final List<Module> modules}) = _$ModuleStateImpl;

  @override
  ModuleStatus get status;
  @override
  String get message;
  @override
  List<Module> get modules;
  @override
  @JsonKey(ignore: true)
  _$$ModuleStateImplCopyWith<_$ModuleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
