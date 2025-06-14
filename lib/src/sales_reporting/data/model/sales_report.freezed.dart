// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesReport _$SalesReportFromJson(Map<String, dynamic> json) {
  return _SalesReport.fromJson(json);
}

/// @nodoc
mixin _$SalesReport {
  String? get id => throw _privateConstructorUsedError;
  String? get transactionId => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  int get quantitySold => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesReportCopyWith<SalesReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportCopyWith<$Res> {
  factory $SalesReportCopyWith(
          SalesReport value, $Res Function(SalesReport) then) =
      _$SalesReportCopyWithImpl<$Res, SalesReport>;
  @useResult
  $Res call(
      {String? id,
      String? transactionId,
      Product? product,
      String transactionDate,
      int quantitySold});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$SalesReportCopyWithImpl<$Res, $Val extends SalesReport>
    implements $SalesReportCopyWith<$Res> {
  _$SalesReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = freezed,
    Object? product = freezed,
    Object? transactionDate = null,
    Object? quantitySold = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      quantitySold: null == quantitySold
          ? _value.quantitySold
          : quantitySold // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesReportImplCopyWith<$Res>
    implements $SalesReportCopyWith<$Res> {
  factory _$$SalesReportImplCopyWith(
          _$SalesReportImpl value, $Res Function(_$SalesReportImpl) then) =
      __$$SalesReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? transactionId,
      Product? product,
      String transactionDate,
      int quantitySold});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$SalesReportImplCopyWithImpl<$Res>
    extends _$SalesReportCopyWithImpl<$Res, _$SalesReportImpl>
    implements _$$SalesReportImplCopyWith<$Res> {
  __$$SalesReportImplCopyWithImpl(
      _$SalesReportImpl _value, $Res Function(_$SalesReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? transactionId = freezed,
    Object? product = freezed,
    Object? transactionDate = null,
    Object? quantitySold = null,
  }) {
    return _then(_$SalesReportImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      quantitySold: null == quantitySold
          ? _value.quantitySold
          : quantitySold // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesReportImpl implements _SalesReport {
  const _$SalesReportImpl(
      {this.id,
      this.transactionId,
      this.product,
      this.transactionDate = '',
      this.quantitySold = 0});

  factory _$SalesReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesReportImplFromJson(json);

  @override
  final String? id;
  @override
  final String? transactionId;
  @override
  final Product? product;
  @override
  @JsonKey()
  final String transactionDate;
  @override
  @JsonKey()
  final int quantitySold;

  @override
  String toString() {
    return 'SalesReport(id: $id, transactionId: $transactionId, product: $product, transactionDate: $transactionDate, quantitySold: $quantitySold)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.quantitySold, quantitySold) ||
                other.quantitySold == quantitySold));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, transactionId, product, transactionDate, quantitySold);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesReportImplCopyWith<_$SalesReportImpl> get copyWith =>
      __$$SalesReportImplCopyWithImpl<_$SalesReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesReportImplToJson(
      this,
    );
  }
}

abstract class _SalesReport implements SalesReport {
  const factory _SalesReport(
      {final String? id,
      final String? transactionId,
      final Product? product,
      final String transactionDate,
      final int quantitySold}) = _$SalesReportImpl;

  factory _SalesReport.fromJson(Map<String, dynamic> json) =
      _$SalesReportImpl.fromJson;

  @override
  String? get id;
  @override
  String? get transactionId;
  @override
  Product? get product;
  @override
  String get transactionDate;
  @override
  int get quantitySold;
  @override
  @JsonKey(ignore: true)
  _$$SalesReportImplCopyWith<_$SalesReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
