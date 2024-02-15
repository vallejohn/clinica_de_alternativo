// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BranchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Branch> branch) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Branch branch) onAdd,
    required TResult Function(Branch branch) onEdit,
    required TResult Function(Branch branch) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Branch> branch)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Branch branch)? onAdd,
    TResult? Function(Branch branch)? onEdit,
    TResult? Function(Branch branch)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Branch> branch)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Branch branch)? onAdd,
    TResult Function(Branch branch)? onEdit,
    TResult Function(Branch branch)? onDelete,
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
abstract class $BranchEventCopyWith<$Res> {
  factory $BranchEventCopyWith(
          BranchEvent value, $Res Function(BranchEvent) then) =
      _$BranchEventCopyWithImpl<$Res, BranchEvent>;
}

/// @nodoc
class _$BranchEventCopyWithImpl<$Res, $Val extends BranchEvent>
    implements $BranchEventCopyWith<$Res> {
  _$BranchEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<Branch> branch});
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
  }) {
    return _then(_$OnStartedImpl(
      null == branch
          ? _value._branch
          : branch // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ));
  }
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl(final List<Branch> branch) : _branch = branch;

  final List<Branch> _branch;
  @override
  List<Branch> get branch {
    if (_branch is EqualUnmodifiableListView) return _branch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branch);
  }

  @override
  String toString() {
    return 'BranchEvent.onStarted(branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartedImpl &&
            const DeepCollectionEquality().equals(other._branch, _branch));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      __$$OnStartedImplCopyWithImpl<_$OnStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Branch> branch) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Branch branch) onAdd,
    required TResult Function(Branch branch) onEdit,
    required TResult Function(Branch branch) onDelete,
  }) {
    return onStarted(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Branch> branch)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Branch branch)? onAdd,
    TResult? Function(Branch branch)? onEdit,
    TResult? Function(Branch branch)? onDelete,
  }) {
    return onStarted?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Branch> branch)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Branch branch)? onAdd,
    TResult Function(Branch branch)? onEdit,
    TResult Function(Branch branch)? onDelete,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(branch);
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

abstract class _OnStarted implements BranchEvent {
  const factory _OnStarted(final List<Branch> branch) = _$OnStartedImpl;

  List<Branch> get branch;
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
    extends _$BranchEventCopyWithImpl<$Res, _$OnFetchImpl>
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
    return 'BranchEvent.onFetch()';
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
    required TResult Function(List<Branch> branch) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Branch branch) onAdd,
    required TResult Function(Branch branch) onEdit,
    required TResult Function(Branch branch) onDelete,
  }) {
    return onFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Branch> branch)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Branch branch)? onAdd,
    TResult? Function(Branch branch)? onEdit,
    TResult? Function(Branch branch)? onDelete,
  }) {
    return onFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Branch> branch)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Branch branch)? onAdd,
    TResult Function(Branch branch)? onEdit,
    TResult Function(Branch branch)? onDelete,
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

abstract class _OnFetch implements BranchEvent {
  const factory _OnFetch() = _$OnFetchImpl;
}

/// @nodoc
abstract class _$$OnAddImplCopyWith<$Res> {
  factory _$$OnAddImplCopyWith(
          _$OnAddImpl value, $Res Function(_$OnAddImpl) then) =
      __$$OnAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Branch branch});

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$OnAddImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$OnAddImpl>
    implements _$$OnAddImplCopyWith<$Res> {
  __$$OnAddImplCopyWithImpl(
      _$OnAddImpl _value, $Res Function(_$OnAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
  }) {
    return _then(_$OnAddImpl(
      null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc

class _$OnAddImpl implements _OnAdd {
  const _$OnAddImpl(this.branch);

  @override
  final Branch branch;

  @override
  String toString() {
    return 'BranchEvent.onAdd(branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddImpl &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      __$$OnAddImplCopyWithImpl<_$OnAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Branch> branch) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Branch branch) onAdd,
    required TResult Function(Branch branch) onEdit,
    required TResult Function(Branch branch) onDelete,
  }) {
    return onAdd(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Branch> branch)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Branch branch)? onAdd,
    TResult? Function(Branch branch)? onEdit,
    TResult? Function(Branch branch)? onDelete,
  }) {
    return onAdd?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Branch> branch)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Branch branch)? onAdd,
    TResult Function(Branch branch)? onEdit,
    TResult Function(Branch branch)? onDelete,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(branch);
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

abstract class _OnAdd implements BranchEvent {
  const factory _OnAdd(final Branch branch) = _$OnAddImpl;

  Branch get branch;
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
  $Res call({Branch branch});

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$OnEditImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$OnEditImpl>
    implements _$$OnEditImplCopyWith<$Res> {
  __$$OnEditImplCopyWithImpl(
      _$OnEditImpl _value, $Res Function(_$OnEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
  }) {
    return _then(_$OnEditImpl(
      null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc

class _$OnEditImpl implements _OnEdit {
  const _$OnEditImpl(this.branch);

  @override
  final Branch branch;

  @override
  String toString() {
    return 'BranchEvent.onEdit(branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEditImpl &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEditImplCopyWith<_$OnEditImpl> get copyWith =>
      __$$OnEditImplCopyWithImpl<_$OnEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Branch> branch) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Branch branch) onAdd,
    required TResult Function(Branch branch) onEdit,
    required TResult Function(Branch branch) onDelete,
  }) {
    return onEdit(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Branch> branch)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Branch branch)? onAdd,
    TResult? Function(Branch branch)? onEdit,
    TResult? Function(Branch branch)? onDelete,
  }) {
    return onEdit?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Branch> branch)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Branch branch)? onAdd,
    TResult Function(Branch branch)? onEdit,
    TResult Function(Branch branch)? onDelete,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(branch);
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

abstract class _OnEdit implements BranchEvent {
  const factory _OnEdit(final Branch branch) = _$OnEditImpl;

  Branch get branch;
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
  $Res call({Branch branch});

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$OnDeleteImplCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res, _$OnDeleteImpl>
    implements _$$OnDeleteImplCopyWith<$Res> {
  __$$OnDeleteImplCopyWithImpl(
      _$OnDeleteImpl _value, $Res Function(_$OnDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branch = null,
  }) {
    return _then(_$OnDeleteImpl(
      null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc

class _$OnDeleteImpl implements _OnDelete {
  const _$OnDeleteImpl(this.branch);

  @override
  final Branch branch;

  @override
  String toString() {
    return 'BranchEvent.onDelete(branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteImpl &&
            (identical(other.branch, branch) || other.branch == branch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      __$$OnDeleteImplCopyWithImpl<_$OnDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Branch> branch) onStarted,
    required TResult Function() onFetch,
    required TResult Function(Branch branch) onAdd,
    required TResult Function(Branch branch) onEdit,
    required TResult Function(Branch branch) onDelete,
  }) {
    return onDelete(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Branch> branch)? onStarted,
    TResult? Function()? onFetch,
    TResult? Function(Branch branch)? onAdd,
    TResult? Function(Branch branch)? onEdit,
    TResult? Function(Branch branch)? onDelete,
  }) {
    return onDelete?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Branch> branch)? onStarted,
    TResult Function()? onFetch,
    TResult Function(Branch branch)? onAdd,
    TResult Function(Branch branch)? onEdit,
    TResult Function(Branch branch)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(branch);
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

abstract class _OnDelete implements BranchEvent {
  const factory _OnDelete(final Branch branch) = _$OnDeleteImpl;

  Branch get branch;
  @JsonKey(ignore: true)
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BranchState {
  BranchStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ErrorCode? get errorCode => throw _privateConstructorUsedError;
  List<Branch> get branches => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BranchStateCopyWith<BranchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchStateCopyWith<$Res> {
  factory $BranchStateCopyWith(
          BranchState value, $Res Function(BranchState) then) =
      _$BranchStateCopyWithImpl<$Res, BranchState>;
  @useResult
  $Res call(
      {BranchStatus status,
      String message,
      ErrorCode? errorCode,
      List<Branch> branches});
}

/// @nodoc
class _$BranchStateCopyWithImpl<$Res, $Val extends BranchState>
    implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._value, this._then);

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
    Object? branches = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BranchStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchStateImplCopyWith<$Res>
    implements $BranchStateCopyWith<$Res> {
  factory _$$BranchStateImplCopyWith(
          _$BranchStateImpl value, $Res Function(_$BranchStateImpl) then) =
      __$$BranchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BranchStatus status,
      String message,
      ErrorCode? errorCode,
      List<Branch> branches});
}

/// @nodoc
class __$$BranchStateImplCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res, _$BranchStateImpl>
    implements _$$BranchStateImplCopyWith<$Res> {
  __$$BranchStateImplCopyWithImpl(
      _$BranchStateImpl _value, $Res Function(_$BranchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errorCode = freezed,
    Object? branches = null,
  }) {
    return _then(_$BranchStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BranchStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as ErrorCode?,
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ));
  }
}

/// @nodoc

class _$BranchStateImpl implements _BranchState {
  const _$BranchStateImpl(
      {this.status = BranchStatus.initial,
      this.message = '',
      this.errorCode,
      final List<Branch> branches = const []})
      : _branches = branches;

  @override
  @JsonKey()
  final BranchStatus status;
  @override
  @JsonKey()
  final String message;
  @override
  final ErrorCode? errorCode;
  final List<Branch> _branches;
  @override
  @JsonKey()
  List<Branch> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  String toString() {
    return 'BranchState(status: $status, message: $message, errorCode: $errorCode, branches: $branches)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, errorCode,
      const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchStateImplCopyWith<_$BranchStateImpl> get copyWith =>
      __$$BranchStateImplCopyWithImpl<_$BranchStateImpl>(this, _$identity);
}

abstract class _BranchState implements BranchState {
  const factory _BranchState(
      {final BranchStatus status,
      final String message,
      final ErrorCode? errorCode,
      final List<Branch> branches}) = _$BranchStateImpl;

  @override
  BranchStatus get status;
  @override
  String get message;
  @override
  ErrorCode? get errorCode;
  @override
  List<Branch> get branches;
  @override
  @JsonKey(ignore: true)
  _$$BranchStateImplCopyWith<_$BranchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
