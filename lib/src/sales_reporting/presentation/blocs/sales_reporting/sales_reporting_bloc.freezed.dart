// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_reporting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SalesReportingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchReport,
    required TResult Function(SalesReport salesReport) onSendReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchReport,
    TResult? Function(SalesReport salesReport)? onSendReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchReport,
    TResult Function(SalesReport salesReport)? onSendReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchReport value) onFetchReport,
    required TResult Function(_OnSendReport value) onSendReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchReport value)? onFetchReport,
    TResult? Function(_OnSendReport value)? onSendReport,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchReport value)? onFetchReport,
    TResult Function(_OnSendReport value)? onSendReport,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportingEventCopyWith<$Res> {
  factory $SalesReportingEventCopyWith(
          SalesReportingEvent value, $Res Function(SalesReportingEvent) then) =
      _$SalesReportingEventCopyWithImpl<$Res, SalesReportingEvent>;
}

/// @nodoc
class _$SalesReportingEventCopyWithImpl<$Res, $Val extends SalesReportingEvent>
    implements $SalesReportingEventCopyWith<$Res> {
  _$SalesReportingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnFetchReportImplCopyWith<$Res> {
  factory _$$OnFetchReportImplCopyWith(
          _$OnFetchReportImpl value, $Res Function(_$OnFetchReportImpl) then) =
      __$$OnFetchReportImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchReportImplCopyWithImpl<$Res>
    extends _$SalesReportingEventCopyWithImpl<$Res, _$OnFetchReportImpl>
    implements _$$OnFetchReportImplCopyWith<$Res> {
  __$$OnFetchReportImplCopyWithImpl(
      _$OnFetchReportImpl _value, $Res Function(_$OnFetchReportImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnFetchReportImpl implements _OnFetchReport {
  const _$OnFetchReportImpl();

  @override
  String toString() {
    return 'SalesReportingEvent.onFetchReport()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFetchReportImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchReport,
    required TResult Function(SalesReport salesReport) onSendReport,
  }) {
    return onFetchReport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchReport,
    TResult? Function(SalesReport salesReport)? onSendReport,
  }) {
    return onFetchReport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchReport,
    TResult Function(SalesReport salesReport)? onSendReport,
    required TResult orElse(),
  }) {
    if (onFetchReport != null) {
      return onFetchReport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchReport value) onFetchReport,
    required TResult Function(_OnSendReport value) onSendReport,
  }) {
    return onFetchReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchReport value)? onFetchReport,
    TResult? Function(_OnSendReport value)? onSendReport,
  }) {
    return onFetchReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchReport value)? onFetchReport,
    TResult Function(_OnSendReport value)? onSendReport,
    required TResult orElse(),
  }) {
    if (onFetchReport != null) {
      return onFetchReport(this);
    }
    return orElse();
  }
}

abstract class _OnFetchReport implements SalesReportingEvent {
  const factory _OnFetchReport() = _$OnFetchReportImpl;
}

/// @nodoc
abstract class _$$OnSendReportImplCopyWith<$Res> {
  factory _$$OnSendReportImplCopyWith(
          _$OnSendReportImpl value, $Res Function(_$OnSendReportImpl) then) =
      __$$OnSendReportImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SalesReport salesReport});

  $SalesReportCopyWith<$Res> get salesReport;
}

/// @nodoc
class __$$OnSendReportImplCopyWithImpl<$Res>
    extends _$SalesReportingEventCopyWithImpl<$Res, _$OnSendReportImpl>
    implements _$$OnSendReportImplCopyWith<$Res> {
  __$$OnSendReportImplCopyWithImpl(
      _$OnSendReportImpl _value, $Res Function(_$OnSendReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salesReport = null,
  }) {
    return _then(_$OnSendReportImpl(
      null == salesReport
          ? _value.salesReport
          : salesReport // ignore: cast_nullable_to_non_nullable
              as SalesReport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SalesReportCopyWith<$Res> get salesReport {
    return $SalesReportCopyWith<$Res>(_value.salesReport, (value) {
      return _then(_value.copyWith(salesReport: value));
    });
  }
}

/// @nodoc

class _$OnSendReportImpl implements _OnSendReport {
  const _$OnSendReportImpl(this.salesReport);

  @override
  final SalesReport salesReport;

  @override
  String toString() {
    return 'SalesReportingEvent.onSendReport(salesReport: $salesReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSendReportImpl &&
            (identical(other.salesReport, salesReport) ||
                other.salesReport == salesReport));
  }

  @override
  int get hashCode => Object.hash(runtimeType, salesReport);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSendReportImplCopyWith<_$OnSendReportImpl> get copyWith =>
      __$$OnSendReportImplCopyWithImpl<_$OnSendReportImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchReport,
    required TResult Function(SalesReport salesReport) onSendReport,
  }) {
    return onSendReport(salesReport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchReport,
    TResult? Function(SalesReport salesReport)? onSendReport,
  }) {
    return onSendReport?.call(salesReport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchReport,
    TResult Function(SalesReport salesReport)? onSendReport,
    required TResult orElse(),
  }) {
    if (onSendReport != null) {
      return onSendReport(salesReport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchReport value) onFetchReport,
    required TResult Function(_OnSendReport value) onSendReport,
  }) {
    return onSendReport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchReport value)? onFetchReport,
    TResult? Function(_OnSendReport value)? onSendReport,
  }) {
    return onSendReport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchReport value)? onFetchReport,
    TResult Function(_OnSendReport value)? onSendReport,
    required TResult orElse(),
  }) {
    if (onSendReport != null) {
      return onSendReport(this);
    }
    return orElse();
  }
}

abstract class _OnSendReport implements SalesReportingEvent {
  const factory _OnSendReport(final SalesReport salesReport) =
      _$OnSendReportImpl;

  SalesReport get salesReport;
  @JsonKey(ignore: true)
  _$$OnSendReportImplCopyWith<_$OnSendReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesReportingState {
  SalesReportingStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<SalesReport> get salesReports => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SalesReportingStateCopyWith<SalesReportingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesReportingStateCopyWith<$Res> {
  factory $SalesReportingStateCopyWith(
          SalesReportingState value, $Res Function(SalesReportingState) then) =
      _$SalesReportingStateCopyWithImpl<$Res, SalesReportingState>;
  @useResult
  $Res call(
      {SalesReportingStatus status,
      String message,
      List<SalesReport> salesReports});
}

/// @nodoc
class _$SalesReportingStateCopyWithImpl<$Res, $Val extends SalesReportingState>
    implements $SalesReportingStateCopyWith<$Res> {
  _$SalesReportingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? salesReports = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalesReportingStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      salesReports: null == salesReports
          ? _value.salesReports
          : salesReports // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesReportingStateImplCopyWith<$Res>
    implements $SalesReportingStateCopyWith<$Res> {
  factory _$$SalesReportingStateImplCopyWith(_$SalesReportingStateImpl value,
          $Res Function(_$SalesReportingStateImpl) then) =
      __$$SalesReportingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SalesReportingStatus status,
      String message,
      List<SalesReport> salesReports});
}

/// @nodoc
class __$$SalesReportingStateImplCopyWithImpl<$Res>
    extends _$SalesReportingStateCopyWithImpl<$Res, _$SalesReportingStateImpl>
    implements _$$SalesReportingStateImplCopyWith<$Res> {
  __$$SalesReportingStateImplCopyWithImpl(_$SalesReportingStateImpl _value,
      $Res Function(_$SalesReportingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? salesReports = null,
  }) {
    return _then(_$SalesReportingStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalesReportingStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      salesReports: null == salesReports
          ? _value._salesReports
          : salesReports // ignore: cast_nullable_to_non_nullable
              as List<SalesReport>,
    ));
  }
}

/// @nodoc

class _$SalesReportingStateImpl implements _SalesReportingState {
  _$SalesReportingStateImpl(
      {this.status = SalesReportingStatus.initial,
      this.message = '',
      final List<SalesReport> salesReports = const []})
      : _salesReports = salesReports;

  @override
  @JsonKey()
  final SalesReportingStatus status;
  @override
  @JsonKey()
  final String message;
  final List<SalesReport> _salesReports;
  @override
  @JsonKey()
  List<SalesReport> get salesReports {
    if (_salesReports is EqualUnmodifiableListView) return _salesReports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_salesReports);
  }

  @override
  String toString() {
    return 'SalesReportingState(status: $status, message: $message, salesReports: $salesReports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesReportingStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._salesReports, _salesReports));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_salesReports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesReportingStateImplCopyWith<_$SalesReportingStateImpl> get copyWith =>
      __$$SalesReportingStateImplCopyWithImpl<_$SalesReportingStateImpl>(
          this, _$identity);
}

abstract class _SalesReportingState implements SalesReportingState {
  factory _SalesReportingState(
      {final SalesReportingStatus status,
      final String message,
      final List<SalesReport> salesReports}) = _$SalesReportingStateImpl;

  @override
  SalesReportingStatus get status;
  @override
  String get message;
  @override
  List<SalesReport> get salesReports;
  @override
  @JsonKey(ignore: true)
  _$$SalesReportingStateImplCopyWith<_$SalesReportingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
