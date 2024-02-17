// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_initializer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataInitializerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchData value) onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchData value)? onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchData value)? onFetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataInitializerEventCopyWith<$Res> {
  factory $DataInitializerEventCopyWith(DataInitializerEvent value,
          $Res Function(DataInitializerEvent) then) =
      _$DataInitializerEventCopyWithImpl<$Res, DataInitializerEvent>;
}

/// @nodoc
class _$DataInitializerEventCopyWithImpl<$Res,
        $Val extends DataInitializerEvent>
    implements $DataInitializerEventCopyWith<$Res> {
  _$DataInitializerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnFetchDataImplCopyWith<$Res> {
  factory _$$OnFetchDataImplCopyWith(
          _$OnFetchDataImpl value, $Res Function(_$OnFetchDataImpl) then) =
      __$$OnFetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchDataImplCopyWithImpl<$Res>
    extends _$DataInitializerEventCopyWithImpl<$Res, _$OnFetchDataImpl>
    implements _$$OnFetchDataImplCopyWith<$Res> {
  __$$OnFetchDataImplCopyWithImpl(
      _$OnFetchDataImpl _value, $Res Function(_$OnFetchDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnFetchDataImpl implements _OnFetchData {
  const _$OnFetchDataImpl();

  @override
  String toString() {
    return 'DataInitializerEvent.onFetchData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchData,
  }) {
    return onFetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchData,
  }) {
    return onFetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchData,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnFetchData value) onFetchData,
  }) {
    return onFetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnFetchData value)? onFetchData,
  }) {
    return onFetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnFetchData value)? onFetchData,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData(this);
    }
    return orElse();
  }
}

abstract class _OnFetchData implements DataInitializerEvent {
  const factory _OnFetchData() = _$OnFetchDataImpl;
}

/// @nodoc
mixin _$DataInitializerState {
  DataInitializerStatus get status => throw _privateConstructorUsedError;
  ProfileInformation? get profile => throw _privateConstructorUsedError;
  List<Role> get roles => throw _privateConstructorUsedError;
  List<ProfileInformation> get employees => throw _privateConstructorUsedError;
  List<Branch> get branches => throw _privateConstructorUsedError;
  List<Module> get modules => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<ProductType> get productTypes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataInitializerStateCopyWith<DataInitializerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataInitializerStateCopyWith<$Res> {
  factory $DataInitializerStateCopyWith(DataInitializerState value,
          $Res Function(DataInitializerState) then) =
      _$DataInitializerStateCopyWithImpl<$Res, DataInitializerState>;
  @useResult
  $Res call(
      {DataInitializerStatus status,
      ProfileInformation? profile,
      List<Role> roles,
      List<ProfileInformation> employees,
      List<Branch> branches,
      List<Module> modules,
      List<Product> products,
      List<ProductType> productTypes});

  $ProfileInformationCopyWith<$Res>? get profile;
}

/// @nodoc
class _$DataInitializerStateCopyWithImpl<$Res,
        $Val extends DataInitializerState>
    implements $DataInitializerStateCopyWith<$Res> {
  _$DataInitializerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? roles = null,
    Object? employees = null,
    Object? branches = null,
    Object? modules = null,
    Object? products = null,
    Object? productTypes = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataInitializerStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation?,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<ProfileInformation>,
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      modules: null == modules
          ? _value.modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productTypes: null == productTypes
          ? _value.productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as List<ProductType>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileInformationCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileInformationCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataInitializerStateImplCopyWith<$Res>
    implements $DataInitializerStateCopyWith<$Res> {
  factory _$$DataInitializerStateImplCopyWith(_$DataInitializerStateImpl value,
          $Res Function(_$DataInitializerStateImpl) then) =
      __$$DataInitializerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataInitializerStatus status,
      ProfileInformation? profile,
      List<Role> roles,
      List<ProfileInformation> employees,
      List<Branch> branches,
      List<Module> modules,
      List<Product> products,
      List<ProductType> productTypes});

  @override
  $ProfileInformationCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$DataInitializerStateImplCopyWithImpl<$Res>
    extends _$DataInitializerStateCopyWithImpl<$Res, _$DataInitializerStateImpl>
    implements _$$DataInitializerStateImplCopyWith<$Res> {
  __$$DataInitializerStateImplCopyWithImpl(_$DataInitializerStateImpl _value,
      $Res Function(_$DataInitializerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profile = freezed,
    Object? roles = null,
    Object? employees = null,
    Object? branches = null,
    Object? modules = null,
    Object? products = null,
    Object? productTypes = null,
  }) {
    return _then(_$DataInitializerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataInitializerStatus,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileInformation?,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<Role>,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<ProfileInformation>,
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
      modules: null == modules
          ? _value._modules
          : modules // ignore: cast_nullable_to_non_nullable
              as List<Module>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productTypes: null == productTypes
          ? _value._productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as List<ProductType>,
    ));
  }
}

/// @nodoc

class _$DataInitializerStateImpl implements _DataInitializerState {
  const _$DataInitializerStateImpl(
      {this.status = DataInitializerStatus.initial,
      this.profile,
      final List<Role> roles = const [],
      final List<ProfileInformation> employees = const [],
      final List<Branch> branches = const [],
      final List<Module> modules = const [],
      final List<Product> products = const [],
      final List<ProductType> productTypes = const []})
      : _roles = roles,
        _employees = employees,
        _branches = branches,
        _modules = modules,
        _products = products,
        _productTypes = productTypes;

  @override
  @JsonKey()
  final DataInitializerStatus status;
  @override
  final ProfileInformation? profile;
  final List<Role> _roles;
  @override
  @JsonKey()
  List<Role> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final List<ProfileInformation> _employees;
  @override
  @JsonKey()
  List<ProfileInformation> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  final List<Branch> _branches;
  @override
  @JsonKey()
  List<Branch> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  final List<Module> _modules;
  @override
  @JsonKey()
  List<Module> get modules {
    if (_modules is EqualUnmodifiableListView) return _modules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modules);
  }

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductType> _productTypes;
  @override
  @JsonKey()
  List<ProductType> get productTypes {
    if (_productTypes is EqualUnmodifiableListView) return _productTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productTypes);
  }

  @override
  String toString() {
    return 'DataInitializerState(status: $status, profile: $profile, roles: $roles, employees: $employees, branches: $branches, modules: $modules, products: $products, productTypes: $productTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataInitializerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            const DeepCollectionEquality().equals(other._modules, _modules) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._productTypes, _productTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      profile,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_employees),
      const DeepCollectionEquality().hash(_branches),
      const DeepCollectionEquality().hash(_modules),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataInitializerStateImplCopyWith<_$DataInitializerStateImpl>
      get copyWith =>
          __$$DataInitializerStateImplCopyWithImpl<_$DataInitializerStateImpl>(
              this, _$identity);
}

abstract class _DataInitializerState implements DataInitializerState {
  const factory _DataInitializerState(
      {final DataInitializerStatus status,
      final ProfileInformation? profile,
      final List<Role> roles,
      final List<ProfileInformation> employees,
      final List<Branch> branches,
      final List<Module> modules,
      final List<Product> products,
      final List<ProductType> productTypes}) = _$DataInitializerStateImpl;

  @override
  DataInitializerStatus get status;
  @override
  ProfileInformation? get profile;
  @override
  List<Role> get roles;
  @override
  List<ProfileInformation> get employees;
  @override
  List<Branch> get branches;
  @override
  List<Module> get modules;
  @override
  List<Product> get products;
  @override
  List<ProductType> get productTypes;
  @override
  @JsonKey(ignore: true)
  _$$DataInitializerStateImplCopyWith<_$DataInitializerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
