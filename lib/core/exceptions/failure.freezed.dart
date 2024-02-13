// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseException firebaseException) firebase,
    required TResult Function(DocumentException docException) documentException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseException firebaseException)? firebase,
    TResult? Function(DocumentException docException)? documentException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
    TResult Function(DocumentException docException)? documentException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
    required TResult Function(_DocumentException value) documentException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Firebase value)? firebase,
    TResult? Function(_DocumentException value)? documentException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_DocumentException value)? documentException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirebaseImplCopyWith<$Res> {
  factory _$$FirebaseImplCopyWith(
          _$FirebaseImpl value, $Res Function(_$FirebaseImpl) then) =
      __$$FirebaseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseException firebaseException});
}

/// @nodoc
class __$$FirebaseImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FirebaseImpl>
    implements _$$FirebaseImplCopyWith<$Res> {
  __$$FirebaseImplCopyWithImpl(
      _$FirebaseImpl _value, $Res Function(_$FirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebaseException = null,
  }) {
    return _then(_$FirebaseImpl(
      null == firebaseException
          ? _value.firebaseException
          : firebaseException // ignore: cast_nullable_to_non_nullable
              as FirebaseException,
    ));
  }
}

/// @nodoc

class _$FirebaseImpl implements _Firebase {
  const _$FirebaseImpl(this.firebaseException);

  @override
  final FirebaseException firebaseException;

  @override
  String toString() {
    return 'Failure.firebase(firebaseException: $firebaseException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseImpl &&
            (identical(other.firebaseException, firebaseException) ||
                other.firebaseException == firebaseException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firebaseException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseImplCopyWith<_$FirebaseImpl> get copyWith =>
      __$$FirebaseImplCopyWithImpl<_$FirebaseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseException firebaseException) firebase,
    required TResult Function(DocumentException docException) documentException,
  }) {
    return firebase(firebaseException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseException firebaseException)? firebase,
    TResult? Function(DocumentException docException)? documentException,
  }) {
    return firebase?.call(firebaseException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
    TResult Function(DocumentException docException)? documentException,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(firebaseException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
    required TResult Function(_DocumentException value) documentException,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Firebase value)? firebase,
    TResult? Function(_DocumentException value)? documentException,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_DocumentException value)? documentException,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }
}

abstract class _Firebase implements Failure {
  const factory _Firebase(final FirebaseException firebaseException) =
      _$FirebaseImpl;

  FirebaseException get firebaseException;
  @JsonKey(ignore: true)
  _$$FirebaseImplCopyWith<_$FirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentExceptionImplCopyWith<$Res> {
  factory _$$DocumentExceptionImplCopyWith(_$DocumentExceptionImpl value,
          $Res Function(_$DocumentExceptionImpl) then) =
      __$$DocumentExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentException docException});
}

/// @nodoc
class __$$DocumentExceptionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$DocumentExceptionImpl>
    implements _$$DocumentExceptionImplCopyWith<$Res> {
  __$$DocumentExceptionImplCopyWithImpl(_$DocumentExceptionImpl _value,
      $Res Function(_$DocumentExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docException = null,
  }) {
    return _then(_$DocumentExceptionImpl(
      null == docException
          ? _value.docException
          : docException // ignore: cast_nullable_to_non_nullable
              as DocumentException,
    ));
  }
}

/// @nodoc

class _$DocumentExceptionImpl implements _DocumentException {
  const _$DocumentExceptionImpl(this.docException);

  @override
  final DocumentException docException;

  @override
  String toString() {
    return 'Failure.documentException(docException: $docException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentExceptionImpl &&
            (identical(other.docException, docException) ||
                other.docException == docException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docException);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentExceptionImplCopyWith<_$DocumentExceptionImpl> get copyWith =>
      __$$DocumentExceptionImplCopyWithImpl<_$DocumentExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirebaseException firebaseException) firebase,
    required TResult Function(DocumentException docException) documentException,
  }) {
    return documentException(docException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirebaseException firebaseException)? firebase,
    TResult? Function(DocumentException docException)? documentException,
  }) {
    return documentException?.call(docException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirebaseException firebaseException)? firebase,
    TResult Function(DocumentException docException)? documentException,
    required TResult orElse(),
  }) {
    if (documentException != null) {
      return documentException(docException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firebase value) firebase,
    required TResult Function(_DocumentException value) documentException,
  }) {
    return documentException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Firebase value)? firebase,
    TResult? Function(_DocumentException value)? documentException,
  }) {
    return documentException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firebase value)? firebase,
    TResult Function(_DocumentException value)? documentException,
    required TResult orElse(),
  }) {
    if (documentException != null) {
      return documentException(this);
    }
    return orElse();
  }
}

abstract class _DocumentException implements Failure {
  const factory _DocumentException(final DocumentException docException) =
      _$DocumentExceptionImpl;

  DocumentException get docException;
  @JsonKey(ignore: true)
  _$$DocumentExceptionImplCopyWith<_$DocumentExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
