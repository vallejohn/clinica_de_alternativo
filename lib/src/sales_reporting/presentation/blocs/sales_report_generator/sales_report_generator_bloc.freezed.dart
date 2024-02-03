// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_report_generator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesReportGeneratorEvent {
  FetchSalesReportsParam get param => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSalesReportsParam param) onGenerateReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSalesReportsParam param)? onGenerateReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSalesReportsParam param)? onGenerateReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGenerateReport value) onGenerateReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGenerateReport value)? onGenerateReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGenerateReport value)? onGenerateReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesReportGeneratorEventCopyWith<SalesReportGeneratorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportGeneratorEventCopyWith<$Res> {
  factory $SalesReportGeneratorEventCopyWith(SalesReportGeneratorEvent value,
          $Res Function(SalesReportGeneratorEvent) then) =
      _$SalesReportGeneratorEventCopyWithImpl<$Res, SalesReportGeneratorEvent>;
  @useResult
  $Res call({FetchSalesReportsParam param});
}

/// @nodoc
class _$SalesReportGeneratorEventCopyWithImpl<$Res,
        $Val extends SalesReportGeneratorEvent>
    implements $SalesReportGeneratorEventCopyWith<$Res> {
  _$SalesReportGeneratorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_value.copyWith(
      param: null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as FetchSalesReportsParam,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnGenerateReportImplCopyWith<$Res>
    implements $SalesReportGeneratorEventCopyWith<$Res> {
  factory _$$OnGenerateReportImplCopyWith(_$OnGenerateReportImpl value,
          $Res Function(_$OnGenerateReportImpl) then) =
      __$$OnGenerateReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FetchSalesReportsParam param});
}

/// @nodoc
class __$$OnGenerateReportImplCopyWithImpl<$Res>
    extends _$SalesReportGeneratorEventCopyWithImpl<$Res,
        _$OnGenerateReportImpl>
    implements _$$OnGenerateReportImplCopyWith<$Res> {
  __$$OnGenerateReportImplCopyWithImpl(_$OnGenerateReportImpl _value,
      $Res Function(_$OnGenerateReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_$OnGenerateReportImpl(
      null == param
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as FetchSalesReportsParam,
    ));
  }
}

/// @nodoc

class _$OnGenerateReportImpl implements _OnGenerateReport {
  const _$OnGenerateReportImpl(this.param);

  @override
  final FetchSalesReportsParam param;

  @override
  String toString() {
    return 'SalesReportGeneratorEvent.onGenerateReport(param: $param)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGenerateReportImpl &&
            (identical(other.param, param) || other.param == param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, param);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGenerateReportImplCopyWith<_$OnGenerateReportImpl> get copyWith =>
      __$$OnGenerateReportImplCopyWithImpl<_$OnGenerateReportImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FetchSalesReportsParam param) onGenerateReport,
  }) {
    return onGenerateReport(param);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FetchSalesReportsParam param)? onGenerateReport,
  }) {
    return onGenerateReport?.call(param);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FetchSalesReportsParam param)? onGenerateReport,
    required TResult orElse(),
  }) {
    if (onGenerateReport != null) {
      return onGenerateReport(param);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGenerateReport value) onGenerateReport,
  }) {
    return onGenerateReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGenerateReport value)? onGenerateReport,
  }) {
    return onGenerateReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGenerateReport value)? onGenerateReport,
    required TResult orElse(),
  }) {
    if (onGenerateReport != null) {
      return onGenerateReport(this);
    }
    return orElse();
  }
}

abstract class _OnGenerateReport implements SalesReportGeneratorEvent {
  const factory _OnGenerateReport(final FetchSalesReportsParam param) =
      _$OnGenerateReportImpl;

  @override
  FetchSalesReportsParam get param;
  @override
  @JsonKey(ignore: true)
  _$$OnGenerateReportImplCopyWith<_$OnGenerateReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesReportGeneratorState {
  SalesGeneratorStatus get status => throw _privateConstructorUsedError;
  SalesReportDocuments? get salesReportDocs =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesReportGeneratorStateCopyWith<SalesReportGeneratorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportGeneratorStateCopyWith<$Res> {
  factory $SalesReportGeneratorStateCopyWith(SalesReportGeneratorState value,
          $Res Function(SalesReportGeneratorState) then) =
      _$SalesReportGeneratorStateCopyWithImpl<$Res, SalesReportGeneratorState>;
  @useResult
  $Res call(
      {SalesGeneratorStatus status,
      SalesReportDocuments? salesReportDocs,
      String message});

  $SalesReportDocumentsCopyWith<$Res>? get salesReportDocs;
}

/// @nodoc
class _$SalesReportGeneratorStateCopyWithImpl<$Res,
        $Val extends SalesReportGeneratorState>
    implements $SalesReportGeneratorStateCopyWith<$Res> {
  _$SalesReportGeneratorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? salesReportDocs = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalesGeneratorStatus,
      salesReportDocs: freezed == salesReportDocs
          ? _value.salesReportDocs
          : salesReportDocs // ignore: cast_nullable_to_non_nullable
              as SalesReportDocuments?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesReportDocumentsCopyWith<$Res>? get salesReportDocs {
    if (_value.salesReportDocs == null) {
      return null;
    }

    return $SalesReportDocumentsCopyWith<$Res>(_value.salesReportDocs!,
        (value) {
      return _then(_value.copyWith(salesReportDocs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SalesReportGeneratorStateImplCopyWith<$Res>
    implements $SalesReportGeneratorStateCopyWith<$Res> {
  factory _$$SalesReportGeneratorStateImplCopyWith(
          _$SalesReportGeneratorStateImpl value,
          $Res Function(_$SalesReportGeneratorStateImpl) then) =
      __$$SalesReportGeneratorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SalesGeneratorStatus status,
      SalesReportDocuments? salesReportDocs,
      String message});

  @override
  $SalesReportDocumentsCopyWith<$Res>? get salesReportDocs;
}

/// @nodoc
class __$$SalesReportGeneratorStateImplCopyWithImpl<$Res>
    extends _$SalesReportGeneratorStateCopyWithImpl<$Res,
        _$SalesReportGeneratorStateImpl>
    implements _$$SalesReportGeneratorStateImplCopyWith<$Res> {
  __$$SalesReportGeneratorStateImplCopyWithImpl(
      _$SalesReportGeneratorStateImpl _value,
      $Res Function(_$SalesReportGeneratorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? salesReportDocs = freezed,
    Object? message = null,
  }) {
    return _then(_$SalesReportGeneratorStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalesGeneratorStatus,
      salesReportDocs: freezed == salesReportDocs
          ? _value.salesReportDocs
          : salesReportDocs // ignore: cast_nullable_to_non_nullable
              as SalesReportDocuments?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SalesReportGeneratorStateImpl implements _SalesReportGeneratorState {
  _$SalesReportGeneratorStateImpl(
      {this.status = SalesGeneratorStatus.initial,
      this.salesReportDocs,
      this.message = ''});

  @override
  @JsonKey()
  final SalesGeneratorStatus status;
  @override
  final SalesReportDocuments? salesReportDocs;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SalesReportGeneratorState(status: $status, salesReportDocs: $salesReportDocs, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesReportGeneratorStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.salesReportDocs, salesReportDocs) ||
                other.salesReportDocs == salesReportDocs) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, salesReportDocs, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesReportGeneratorStateImplCopyWith<_$SalesReportGeneratorStateImpl>
      get copyWith => __$$SalesReportGeneratorStateImplCopyWithImpl<
          _$SalesReportGeneratorStateImpl>(this, _$identity);
}

abstract class _SalesReportGeneratorState implements SalesReportGeneratorState {
  factory _SalesReportGeneratorState(
      {final SalesGeneratorStatus status,
      final SalesReportDocuments? salesReportDocs,
      final String message}) = _$SalesReportGeneratorStateImpl;

  @override
  SalesGeneratorStatus get status;
  @override
  SalesReportDocuments? get salesReportDocs;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SalesReportGeneratorStateImplCopyWith<_$SalesReportGeneratorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
