// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchProductState {
  SearchProductStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Product? get selectedProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProductStateCopyWith<SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res, SearchProductState>;
  @useResult
  $Res call(
      {SearchProductStatus status,
      String message,
      List<Product> products,
      Product? selectedProduct});

  $ProductCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res, $Val extends SearchProductState>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

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
    Object? selectedProduct = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchProductStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
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
abstract class _$$SearchProductStateImplCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory _$$SearchProductStateImplCopyWith(_$SearchProductStateImpl value,
          $Res Function(_$SearchProductStateImpl) then) =
      __$$SearchProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchProductStatus status,
      String message,
      List<Product> products,
      Product? selectedProduct});

  @override
  $ProductCopyWith<$Res>? get selectedProduct;
}

/// @nodoc
class __$$SearchProductStateImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$SearchProductStateImpl>
    implements _$$SearchProductStateImplCopyWith<$Res> {
  __$$SearchProductStateImplCopyWithImpl(_$SearchProductStateImpl _value,
      $Res Function(_$SearchProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? products = null,
    Object? selectedProduct = freezed,
  }) {
    return _then(_$SearchProductStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchProductStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$SearchProductStateImpl implements _SearchProductState {
  _$SearchProductStateImpl(
      {this.status = SearchProductStatus.initial,
      this.message = '',
      final List<Product> products = const [],
      this.selectedProduct})
      : _products = products;

  @override
  @JsonKey()
  final SearchProductStatus status;
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
  final Product? selectedProduct;

  @override
  String toString() {
    return 'SearchProductState(status: $status, message: $message, products: $products, selectedProduct: $selectedProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_products), selectedProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductStateImplCopyWith<_$SearchProductStateImpl> get copyWith =>
      __$$SearchProductStateImplCopyWithImpl<_$SearchProductStateImpl>(
          this, _$identity);
}

abstract class _SearchProductState implements SearchProductState {
  factory _SearchProductState(
      {final SearchProductStatus status,
      final String message,
      final List<Product> products,
      final Product? selectedProduct}) = _$SearchProductStateImpl;

  @override
  SearchProductStatus get status;
  @override
  String get message;
  @override
  List<Product> get products;
  @override
  Product? get selectedProduct;
  @override
  @JsonKey(ignore: true)
  _$$SearchProductStateImplCopyWith<_$SearchProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
