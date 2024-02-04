// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_report_documents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesReportDocuments {
  List<SalesReport> get salesReports => throw _privateConstructorUsedError;
  Paginate? get paginate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesReportDocumentsCopyWith<SalesReportDocuments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportDocumentsCopyWith<$Res> {
  factory $SalesReportDocumentsCopyWith(SalesReportDocuments value,
          $Res Function(SalesReportDocuments) then) =
      _$SalesReportDocumentsCopyWithImpl<$Res, SalesReportDocuments>;
  @useResult
  $Res call({List<SalesReport> salesReports, Paginate? paginate});

  $PaginateCopyWith<$Res>? get paginate;
}

/// @nodoc
class _$SalesReportDocumentsCopyWithImpl<$Res,
        $Val extends SalesReportDocuments>
    implements $SalesReportDocumentsCopyWith<$Res> {
  _$SalesReportDocumentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesReports = null,
    Object? paginate = freezed,
  }) {
    return _then(_value.copyWith(
      salesReports: null == salesReports
          ? _value.salesReports
          : salesReports // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as Paginate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginateCopyWith<$Res>? get paginate {
    if (_value.paginate == null) {
      return null;
    }

    return $PaginateCopyWith<$Res>(_value.paginate!, (value) {
      return _then(_value.copyWith(paginate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesReportDocumentsImplCopyWith<$Res>
    implements $SalesReportDocumentsCopyWith<$Res> {
  factory _$$SalesReportDocumentsImplCopyWith(_$SalesReportDocumentsImpl value,
          $Res Function(_$SalesReportDocumentsImpl) then) =
      __$$SalesReportDocumentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SalesReport> salesReports, Paginate? paginate});

  @override
  $PaginateCopyWith<$Res>? get paginate;
}

/// @nodoc
class __$$SalesReportDocumentsImplCopyWithImpl<$Res>
    extends _$SalesReportDocumentsCopyWithImpl<$Res, _$SalesReportDocumentsImpl>
    implements _$$SalesReportDocumentsImplCopyWith<$Res> {
  __$$SalesReportDocumentsImplCopyWithImpl(_$SalesReportDocumentsImpl _value,
      $Res Function(_$SalesReportDocumentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesReports = null,
    Object? paginate = freezed,
  }) {
    return _then(_$SalesReportDocumentsImpl(
      salesReports: null == salesReports
          ? _value._salesReports
          : salesReports // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>,
      paginate: freezed == paginate
          ? _value.paginate
          : paginate // ignore: cast_nullable_to_non_nullable
              as Paginate?,
    ));
  }
}

/// @nodoc

class _$SalesReportDocumentsImpl implements _SalesReportDocuments {
  const _$SalesReportDocumentsImpl(
      {final List<SalesReport> salesReports = const [], this.paginate})
      : _salesReports = salesReports;

  final List<SalesReport> _salesReports;
  @override
  @JsonKey()
  List<SalesReport> get salesReports {
    if (_salesReports is EqualUnmodifiableListView) return _salesReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesReports);
  }

  @override
  final Paginate? paginate;

  @override
  String toString() {
    return 'SalesReportDocuments(salesReports: $salesReports, paginate: $paginate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesReportDocumentsImpl &&
            const DeepCollectionEquality()
                .equals(other._salesReports, _salesReports) &&
            (identical(other.paginate, paginate) ||
                other.paginate == paginate));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_salesReports), paginate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesReportDocumentsImplCopyWith<_$SalesReportDocumentsImpl>
      get copyWith =>
          __$$SalesReportDocumentsImplCopyWithImpl<_$SalesReportDocumentsImpl>(
              this, _$identity);
}

abstract class _SalesReportDocuments implements SalesReportDocuments {
  const factory _SalesReportDocuments(
      {final List<SalesReport> salesReports,
      final Paginate? paginate}) = _$SalesReportDocumentsImpl;

  @override
  List<SalesReport> get salesReports;
  @override
  Paginate? get paginate;
  @override
  @JsonKey(ignore: true)
  _$$SalesReportDocumentsImplCopyWith<_$SalesReportDocumentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
