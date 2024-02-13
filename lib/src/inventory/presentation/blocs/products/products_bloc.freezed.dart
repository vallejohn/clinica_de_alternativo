// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<Product> types});
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
  }) {
    return _then(_$OnStartedImpl(
      null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl(final List<Product> types) : _types = types;

  final List<Product> _types;
  @override
  List<Product> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'ProductsEvent.onStarted(types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartedImpl &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      __$$OnStartedImplCopyWithImpl<_$OnStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onStarted(types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onStarted?.call(types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements ProductsEvent {
  const factory _OnStarted(final List<Product> types) = _$OnStartedImpl;

  List<Product> get types;
  @JsonKey(ignore: true)
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFetchListImplCopyWith<$Res> {
  factory _$$OnFetchListImplCopyWith(
          _$OnFetchListImpl value, $Res Function(_$OnFetchListImpl) then) =
      __$$OnFetchListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchListImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnFetchListImpl>
    implements _$$OnFetchListImplCopyWith<$Res> {
  __$$OnFetchListImplCopyWithImpl(
      _$OnFetchListImpl _value, $Res Function(_$OnFetchListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnFetchListImpl implements _OnFetchList {
  const _$OnFetchListImpl();

  @override
  String toString() {
    return 'ProductsEvent.onFetchList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFetchListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onFetchList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onFetchList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onFetchList != null) {
      return onFetchList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onFetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onFetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onFetchList != null) {
      return onFetchList(this);
    }
    return orElse();
  }
}

abstract class _OnFetchList implements ProductsEvent {
  const factory _OnFetchList() = _$OnFetchListImpl;
}

/// @nodoc
abstract class _$$OnSetSelectedProductImplCopyWith<$Res> {
  factory _$$OnSetSelectedProductImplCopyWith(_$OnSetSelectedProductImpl value,
          $Res Function(_$OnSetSelectedProductImpl) then) =
      __$$OnSetSelectedProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$OnSetSelectedProductImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnSetSelectedProductImpl>
    implements _$$OnSetSelectedProductImplCopyWith<$Res> {
  __$$OnSetSelectedProductImplCopyWithImpl(_$OnSetSelectedProductImpl _value,
      $Res Function(_$OnSetSelectedProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$OnSetSelectedProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$OnSetSelectedProductImpl implements _OnSetSelectedProduct {
  const _$OnSetSelectedProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsEvent.onSetSelectedProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSetSelectedProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSetSelectedProductImplCopyWith<_$OnSetSelectedProductImpl>
      get copyWith =>
          __$$OnSetSelectedProductImplCopyWithImpl<_$OnSetSelectedProductImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onSetSelectedProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onSetSelectedProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onSetSelectedProduct != null) {
      return onSetSelectedProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onSetSelectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onSetSelectedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onSetSelectedProduct != null) {
      return onSetSelectedProduct(this);
    }
    return orElse();
  }
}

abstract class _OnSetSelectedProduct implements ProductsEvent {
  const factory _OnSetSelectedProduct(final Product product) =
      _$OnSetSelectedProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$OnSetSelectedProductImplCopyWith<_$OnSetSelectedProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAddImplCopyWith<$Res> {
  factory _$$OnAddImplCopyWith(
          _$OnAddImpl value, $Res Function(_$OnAddImpl) then) =
      __$$OnAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$OnAddImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnAddImpl>
    implements _$$OnAddImplCopyWith<$Res> {
  __$$OnAddImplCopyWithImpl(
      _$OnAddImpl _value, $Res Function(_$OnAddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$OnAddImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$OnAddImpl implements _OnAdd {
  const _$OnAddImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsEvent.onAdd(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      __$$OnAddImplCopyWithImpl<_$OnAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onAdd(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onAdd?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class _OnAdd implements ProductsEvent {
  const factory _OnAdd(final Product product) = _$OnAddImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$OnAddImplCopyWith<_$OnAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnEditImplCopyWith<$Res> {
  factory _$$OnEditImplCopyWith(
          _$OnEditImpl value, $Res Function(_$OnEditImpl) then) =
      __$$OnEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnEditImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnEditImpl>
    implements _$$OnEditImplCopyWith<$Res> {
  __$$OnEditImplCopyWithImpl(
      _$OnEditImpl _value, $Res Function(_$OnEditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnEditImpl implements _OnEdit {
  const _$OnEditImpl();

  @override
  String toString() {
    return 'ProductsEvent.onEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onEdit != null) {
      return onEdit(this);
    }
    return orElse();
  }
}

abstract class _OnEdit implements ProductsEvent {
  const factory _OnEdit() = _$OnEditImpl;
}

/// @nodoc
abstract class _$$OnDoneEditingImplCopyWith<$Res> {
  factory _$$OnDoneEditingImplCopyWith(
          _$OnDoneEditingImpl value, $Res Function(_$OnDoneEditingImpl) then) =
      __$$OnDoneEditingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$OnDoneEditingImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnDoneEditingImpl>
    implements _$$OnDoneEditingImplCopyWith<$Res> {
  __$$OnDoneEditingImplCopyWithImpl(
      _$OnDoneEditingImpl _value, $Res Function(_$OnDoneEditingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$OnDoneEditingImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$OnDoneEditingImpl implements _OnDoneEditing {
  const _$OnDoneEditingImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductsEvent.onDoneEditing(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDoneEditingImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDoneEditingImplCopyWith<_$OnDoneEditingImpl> get copyWith =>
      __$$OnDoneEditingImplCopyWithImpl<_$OnDoneEditingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onDoneEditing(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onDoneEditing?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onDoneEditing != null) {
      return onDoneEditing(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onDoneEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onDoneEditing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onDoneEditing != null) {
      return onDoneEditing(this);
    }
    return orElse();
  }
}

abstract class _OnDoneEditing implements ProductsEvent {
  const factory _OnDoneEditing(final Product product) = _$OnDoneEditingImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$OnDoneEditingImplCopyWith<_$OnDoneEditingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCancelEditingImplCopyWith<$Res> {
  factory _$$OnCancelEditingImplCopyWith(_$OnCancelEditingImpl value,
          $Res Function(_$OnCancelEditingImpl) then) =
      __$$OnCancelEditingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCancelEditingImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnCancelEditingImpl>
    implements _$$OnCancelEditingImplCopyWith<$Res> {
  __$$OnCancelEditingImplCopyWithImpl(
      _$OnCancelEditingImpl _value, $Res Function(_$OnCancelEditingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCancelEditingImpl implements _OnCancelEditing {
  const _$OnCancelEditingImpl();

  @override
  String toString() {
    return 'ProductsEvent.onCancelEditing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCancelEditingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onCancelEditing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onCancelEditing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onCancelEditing != null) {
      return onCancelEditing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onCancelEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onCancelEditing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onCancelEditing != null) {
      return onCancelEditing(this);
    }
    return orElse();
  }
}

abstract class _OnCancelEditing implements ProductsEvent {
  const factory _OnCancelEditing() = _$OnCancelEditingImpl;
}

/// @nodoc
abstract class _$$OnDeleteSelectedProductImplCopyWith<$Res> {
  factory _$$OnDeleteSelectedProductImplCopyWith(
          _$OnDeleteSelectedProductImpl value,
          $Res Function(_$OnDeleteSelectedProductImpl) then) =
      __$$OnDeleteSelectedProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnDeleteSelectedProductImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$OnDeleteSelectedProductImpl>
    implements _$$OnDeleteSelectedProductImplCopyWith<$Res> {
  __$$OnDeleteSelectedProductImplCopyWithImpl(
      _$OnDeleteSelectedProductImpl _value,
      $Res Function(_$OnDeleteSelectedProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnDeleteSelectedProductImpl implements _OnDeleteSelectedProduct {
  const _$OnDeleteSelectedProductImpl();

  @override
  String toString() {
    return 'ProductsEvent.onDeleteSelectedProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDeleteSelectedProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Product> types) onStarted,
    required TResult Function() onFetchList,
    required TResult Function(Product product) onSetSelectedProduct,
    required TResult Function(Product product) onAdd,
    required TResult Function() onEdit,
    required TResult Function(Product product) onDoneEditing,
    required TResult Function() onCancelEditing,
    required TResult Function() onDeleteSelectedProduct,
  }) {
    return onDeleteSelectedProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Product> types)? onStarted,
    TResult? Function()? onFetchList,
    TResult? Function(Product product)? onSetSelectedProduct,
    TResult? Function(Product product)? onAdd,
    TResult? Function()? onEdit,
    TResult? Function(Product product)? onDoneEditing,
    TResult? Function()? onCancelEditing,
    TResult? Function()? onDeleteSelectedProduct,
  }) {
    return onDeleteSelectedProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Product> types)? onStarted,
    TResult Function()? onFetchList,
    TResult Function(Product product)? onSetSelectedProduct,
    TResult Function(Product product)? onAdd,
    TResult Function()? onEdit,
    TResult Function(Product product)? onDoneEditing,
    TResult Function()? onCancelEditing,
    TResult Function()? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onDeleteSelectedProduct != null) {
      return onDeleteSelectedProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnFetchList value) onFetchList,
    required TResult Function(_OnSetSelectedProduct value) onSetSelectedProduct,
    required TResult Function(_OnAdd value) onAdd,
    required TResult Function(_OnEdit value) onEdit,
    required TResult Function(_OnDoneEditing value) onDoneEditing,
    required TResult Function(_OnCancelEditing value) onCancelEditing,
    required TResult Function(_OnDeleteSelectedProduct value)
        onDeleteSelectedProduct,
  }) {
    return onDeleteSelectedProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnFetchList value)? onFetchList,
    TResult? Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult? Function(_OnAdd value)? onAdd,
    TResult? Function(_OnEdit value)? onEdit,
    TResult? Function(_OnDoneEditing value)? onDoneEditing,
    TResult? Function(_OnCancelEditing value)? onCancelEditing,
    TResult? Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
  }) {
    return onDeleteSelectedProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnFetchList value)? onFetchList,
    TResult Function(_OnSetSelectedProduct value)? onSetSelectedProduct,
    TResult Function(_OnAdd value)? onAdd,
    TResult Function(_OnEdit value)? onEdit,
    TResult Function(_OnDoneEditing value)? onDoneEditing,
    TResult Function(_OnCancelEditing value)? onCancelEditing,
    TResult Function(_OnDeleteSelectedProduct value)? onDeleteSelectedProduct,
    required TResult orElse(),
  }) {
    if (onDeleteSelectedProduct != null) {
      return onDeleteSelectedProduct(this);
    }
    return orElse();
  }
}

abstract class _OnDeleteSelectedProduct implements ProductsEvent {
  const factory _OnDeleteSelectedProduct() = _$OnDeleteSelectedProductImpl;
}

/// @nodoc
mixin _$ProductsState {
  ProductStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  bool get editing => throw _privateConstructorUsedError;
  Product? get selectedProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {ProductStatus status,
      String message,
      List<Product> products,
      bool editing,
      Product? selectedProduct});

  $ProductCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? products = null,
    Object? editing = null,
    Object? selectedProduct = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get selectedProduct {
    if (_value.selectedProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.selectedProduct!, (value) {
      return _then(_value.copyWith(selectedProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductStatus status,
      String message,
      List<Product> products,
      bool editing,
      Product? selectedProduct});

  @override
  $ProductCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? products = null,
    Object? editing = null,
    Object? selectedProduct = freezed,
  }) {
    return _then(_$ProductsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      editing: null == editing
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  _$ProductsStateImpl(
      {this.status = ProductStatus.initial,
      this.message = '',
      final List<Product> products = const [],
      this.editing = false,
      this.selectedProduct})
      : _products = products;

  @override
  @JsonKey()
  final ProductStatus status;
  @override
  @JsonKey()
  final String message;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool editing;
  @override
  final Product? selectedProduct;

  @override
  String toString() {
    return 'ProductsState(status: $status, message: $message, products: $products, editing: $editing, selectedProduct: $selectedProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.editing, editing) || other.editing == editing) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_products), editing, selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  factory _ProductsState(
      {final ProductStatus status,
      final String message,
      final List<Product> products,
      final bool editing,
      final Product? selectedProduct}) = _$ProductsStateImpl;

  @override
  ProductStatus get status;
  @override
  String get message;
  @override
  List<Product> get products;
  @override
  bool get editing;
  @override
  Product? get selectedProduct;
  @override
  @JsonKey(ignore: true)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
