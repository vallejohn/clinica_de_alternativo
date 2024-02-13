part of 'data_initializer_bloc.dart';

enum DataInitializerStatus {initial, loading, success, failed}

@freezed
class DataInitializerState with _$DataInitializerState {
  const factory DataInitializerState({
    @Default(DataInitializerStatus.initial) DataInitializerStatus status,
    ProfileInformation? profile,
    @Default([]) List<Role> roles,
    @Default([]) List<ProfileInformation> employees,
    @Default([]) List<Branch> branches,
    @Default([]) List<Module> modules,
    @Default([]) List<Product> products,
    @Default([]) List<ProductType> productTypes,
  }) = _DataInitializerState;
}
