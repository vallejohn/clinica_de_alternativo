// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductTypeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetch,
    required TResult Function(ProductType type) onAdd,
    required TResult Function(ProductType type) onEdit,
    required TResult Function(String id) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetch,
    TResult? Function(ProductType type)? onAdd,
    TResult? Function(ProductType type)? onEdit,
    TResult? Function(String id)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetch,
    TResult Function(ProductType type)? onAdd,
    TResult Function(ProductType type)? onEdit,
    TResult Function(String id)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetch value) onFetch,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDelete value) onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetch value)? onFetch,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDelete value)? onDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetch value)? onFetch,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDelete value)? onDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeEventCopyWith<$Res> {
  factory $ProductTypeEventCopyWith(
          ProductTypeEvent value, $Res Function(ProductTypeEvent) then) =
      _$ProductTypeEventCopyWithImpl<$Res, ProductTypeEvent>;
}

/// @nodoc
class _$ProductTypeEventCopyWithImpl<$Res, $Val extends ProductTypeEvent>
    implements $ProductTypeEventCopyWith<$Res> {
  _$ProductTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnFetchImplCopyWith<$Res> {
  factory _$$OnFetchImplCopyWith(
          _$OnFetchImpl value, $Res Function(_$OnFetchImpl) then) =
      __$$OnFetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchImplCopyWithImpl<$Res>
    extends _$ProductTypeEventCopyWithImpl<$Res, _$OnFetchImpl>
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
    return 'ProductTypeEvent.onFetch()';
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
    required TResult Function() onFetch,
    required TResult Function(ProductType type) onAdd,
    required TResult Function(ProductType type) onEdit,
    required TResult Function(String id) onDelete,
  }) {
    return onFetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetch,
    TResult? Function(ProductType type)? onAdd,
    TResult? Function(ProductType type)? onEdit,
    TResult? Function(String id)? onDelete,
  }) {
    return onFetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetch,
    TResult Function(ProductType type)? onAdd,
    TResult Function(ProductType type)? onEdit,
    TResult Function(String id)? onDelete,
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

abstract class _OnFetch implements ProductTypeEvent {
  const factory _OnFetch() = _$OnFetchImpl;
}

/// @nodoc
abstract class _$$OnAddImplCopyWith<$Res> {
  factory _$$OnAddImplCopyWith(
          _$OnAddImpl value, $Res Function(_$OnAddImpl) then) =
      __$$OnAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductType type});

  $ProductTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$OnAddImplCopyWithImpl<$Res>
    extends _$ProductTypeEventCopyWithImpl<$Res, _$OnAddImpl>
    implements _$$OnAddImplCopyWith<$Res> {
  __$$OnAddImplCopyWithImpl(
      _$OnAddImpl _value, $Res Function(_$OnAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$OnAddImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductTypeCopyWith<$Res> get type {
    return $ProductTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$OnAddImpl implements _OnAdd {
  const _$OnAddImpl(this.type);

  @override
  final ProductType type;

  @override
  String toString() {
    return 'ProductTypeEvent.onAdd(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      __$$OnAddImplCopyWithImpl<_$OnAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetch,
    required TResult Function(ProductType type) onAdd,
    required TResult Function(ProductType type) onEdit,
    required TResult Function(String id) onDelete,
  }) {
    return onAdd(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetch,
    TResult? Function(ProductType type)? onAdd,
    TResult? Function(ProductType type)? onEdit,
    TResult? Function(String id)? onDelete,
  }) {
    return onAdd?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetch,
    TResult Function(ProductType type)? onAdd,
    TResult Function(ProductType type)? onEdit,
    TResult Function(String id)? onDelete,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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

abstract class _OnAdd implements ProductTypeEvent {
  const factory _OnAdd(final ProductType type) = _$OnAddImpl;

  ProductType get type;
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
  $Res call({ProductType type});

  $ProductTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$OnEditImplCopyWithImpl<$Res>
    extends _$ProductTypeEventCopyWithImpl<$Res, _$OnEditImpl>
    implements _$$OnEditImplCopyWith<$Res> {
  __$$OnEditImplCopyWithImpl(
      _$OnEditImpl _value, $Res Function(_$OnEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$OnEditImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProductType,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductTypeCopyWith<$Res> get type {
    return $ProductTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc

class _$OnEditImpl implements _OnEdit {
  const _$OnEditImpl(this.type);

  @override
  final ProductType type;

  @override
  String toString() {
    return 'ProductTypeEvent.onEdit(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnEditImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnEditImplCopyWith<_$OnEditImpl> get copyWith =>
      __$$OnEditImplCopyWithImpl<_$OnEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetch,
    required TResult Function(ProductType type) onAdd,
    required TResult Function(ProductType type) onEdit,
    required TResult Function(String id) onDelete,
  }) {
    return onEdit(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetch,
    TResult? Function(ProductType type)? onAdd,
    TResult? Function(ProductType type)? onEdit,
    TResult? Function(String id)? onDelete,
  }) {
    return onEdit?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetch,
    TResult Function(ProductType type)? onAdd,
    TResult Function(ProductType type)? onEdit,
    TResult Function(String id)? onDelete,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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

abstract class _OnEdit implements ProductTypeEvent {
  const factory _OnEdit(final ProductType type) = _$OnEditImpl;

  ProductType get type;
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
  $Res call({String id});
}

/// @nodoc
class __$$OnDeleteImplCopyWithImpl<$Res>
    extends _$ProductTypeEventCopyWithImpl<$Res, _$OnDeleteImpl>
    implements _$$OnDeleteImplCopyWith<$Res> {
  __$$OnDeleteImplCopyWithImpl(
      _$OnDeleteImpl _value, $Res Function(_$OnDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$OnDeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDeleteImpl implements _OnDelete {
  const _$OnDeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProductTypeEvent.onDelete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      __$$OnDeleteImplCopyWithImpl<_$OnDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetch,
    required TResult Function(ProductType type) onAdd,
    required TResult Function(ProductType type) onEdit,
    required TResult Function(String id) onDelete,
  }) {
    return onDelete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetch,
    TResult? Function(ProductType type)? onAdd,
    TResult? Function(ProductType type)? onEdit,
    TResult? Function(String id)? onDelete,
  }) {
    return onDelete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetch,
    TResult Function(ProductType type)? onAdd,
    TResult Function(ProductType type)? onEdit,
    TResult Function(String id)? onDelete,
    required TResult orElse(),
  }) {
    if (onDelete != null) {
      return onDelete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
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

abstract class _OnDelete implements ProductTypeEvent {
  const factory _OnDelete(final String id) = _$OnDeleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$OnDeleteImplCopyWith<_$OnDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductTypeState {
  ProductTypeStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ProductType> get productTypes => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductTypeStateCopyWith<ProductTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeStateCopyWith<$Res> {
  factory $ProductTypeStateCopyWith(
          ProductTypeState value, $Res Function(ProductTypeState) then) =
      _$ProductTypeStateCopyWithImpl<$Res, ProductTypeState>;
  @useResult
  $Res call(
      {ProductTypeStatus status,
      String message,
      List<ProductType> productTypes,
      bool editing});
}

/// @nodoc
class _$ProductTypeStateCopyWithImpl<$Res, $Val extends ProductTypeState>
    implements $ProductTypeStateCopyWith<$Res> {
  _$ProductTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? productTypes = null,
    Object? editing = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductTypeStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      productTypes: null == productTypes
          ? _value.productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as List<ProductType>,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTypeStateImplCopyWith<$Res>
    implements $ProductTypeStateCopyWith<$Res> {
  factory _$$ProductTypeStateImplCopyWith(_$ProductTypeStateImpl value,
          $Res Function(_$ProductTypeStateImpl) then) =
      __$$ProductTypeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductTypeStatus status,
      String message,
      List<ProductType> productTypes,
      bool editing});
}

/// @nodoc
class __$$ProductTypeStateImplCopyWithImpl<$Res>
    extends _$ProductTypeStateCopyWithImpl<$Res, _$ProductTypeStateImpl>
    implements _$$ProductTypeStateImplCopyWith<$Res> {
  __$$ProductTypeStateImplCopyWithImpl(_$ProductTypeStateImpl _value,
      $Res Function(_$ProductTypeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? productTypes = null,
    Object? editing = null,
  }) {
    return _then(_$ProductTypeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductTypeStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      productTypes: null == productTypes
          ? _value._productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as List<ProductType>,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductTypeStateImpl implements _ProductTypeState {
  _$ProductTypeStateImpl(
      {this.status = ProductTypeStatus.initial,
      this.message = '',
      final List<ProductType> productTypes = const [],
      this.editing = false})
      : _productTypes = productTypes;

  @override
  @JsonKey()
  final ProductTypeStatus status;
  @override
  @JsonKey()
  final String message;
  final List<ProductType> _productTypes;
  @override
  @JsonKey()
  List<ProductType> get productTypes {
    if (_productTypes is EqualUnmodifiableListView) return _productTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productTypes);
  }

  @override
  @JsonKey()
  final bool editing;

  @override
  String toString() {
    return 'ProductTypeState(status: $status, message: $message, productTypes: $productTypes, editing: $editing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._productTypes, _productTypes) &&
            (identical(other.editing, editing) || other.editing == editing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_productTypes), editing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeStateImplCopyWith<_$ProductTypeStateImpl> get copyWith =>
      __$$ProductTypeStateImplCopyWithImpl<_$ProductTypeStateImpl>(
          this, _$identity);
}

abstract class _ProductTypeState implements ProductTypeState {
  factory _ProductTypeState(
      {final ProductTypeStatus status,
      final String message,
      final List<ProductType> productTypes,
      final bool editing}) = _$ProductTypeStateImpl;

  @override
  ProductTypeStatus get status;
  @override
  String get message;
  @override
  List<ProductType> get productTypes;
  @override
  bool get editing;
  @override
  @JsonKey(ignore: true)
  _$$ProductTypeStateImplCopyWith<_$ProductTypeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
