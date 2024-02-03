// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Paginate {
  int get limit => throw _privateConstructorUsedError;
  QueryDocumentSnapshot<Map<String, dynamic>>? get lastVisibleDocument =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginateCopyWith<Paginate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateCopyWith<$Res> {
  factory $PaginateCopyWith(Paginate value, $Res Function(Paginate) then) =
      _$PaginateCopyWithImpl<$Res, Paginate>;
  @useResult
  $Res call(
      {int limit,
      QueryDocumentSnapshot<Map<String, dynamic>>? lastVisibleDocument});
}

/// @nodoc
class _$PaginateCopyWithImpl<$Res, $Val extends Paginate>
    implements $PaginateCopyWith<$Res> {
  _$PaginateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? lastVisibleDocument = freezed,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      lastVisibleDocument: freezed == lastVisibleDocument
          ? _value.lastVisibleDocument
          : lastVisibleDocument // ignore: cast_nullable_to_non_nullable
              as QueryDocumentSnapshot<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginateImplCopyWith<$Res>
    implements $PaginateCopyWith<$Res> {
  factory _$$PaginateImplCopyWith(
          _$PaginateImpl value, $Res Function(_$PaginateImpl) then) =
      __$$PaginateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int limit,
      QueryDocumentSnapshot<Map<String, dynamic>>? lastVisibleDocument});
}

/// @nodoc
class __$$PaginateImplCopyWithImpl<$Res>
    extends _$PaginateCopyWithImpl<$Res, _$PaginateImpl>
    implements _$$PaginateImplCopyWith<$Res> {
  __$$PaginateImplCopyWithImpl(
      _$PaginateImpl _value, $Res Function(_$PaginateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? lastVisibleDocument = freezed,
  }) {
    return _then(_$PaginateImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      lastVisibleDocument: freezed == lastVisibleDocument
          ? _value.lastVisibleDocument
          : lastVisibleDocument // ignore: cast_nullable_to_non_nullable
              as QueryDocumentSnapshot<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc

class _$PaginateImpl implements _Paginate {
  const _$PaginateImpl({this.limit = 15, this.lastVisibleDocument});

  @override
  @JsonKey()
  final int limit;
  @override
  final QueryDocumentSnapshot<Map<String, dynamic>>? lastVisibleDocument;

  @override
  String toString() {
    return 'Paginate(limit: $limit, lastVisibleDocument: $lastVisibleDocument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.lastVisibleDocument, lastVisibleDocument) ||
                other.lastVisibleDocument == lastVisibleDocument));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, lastVisibleDocument);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateImplCopyWith<_$PaginateImpl> get copyWith =>
      __$$PaginateImplCopyWithImpl<_$PaginateImpl>(this, _$identity);
}

abstract class _Paginate implements Paginate {
  const factory _Paginate(
      {final int limit,
      final QueryDocumentSnapshot<Map<String, dynamic>>?
          lastVisibleDocument}) = _$PaginateImpl;

  @override
  int get limit;
  @override
  QueryDocumentSnapshot<Map<String, dynamic>>? get lastVisibleDocument;
  @override
  @JsonKey(ignore: true)
  _$$PaginateImplCopyWith<_$PaginateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
