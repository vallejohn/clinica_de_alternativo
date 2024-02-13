part of 'data_initializer_bloc.dart';

@freezed
class DataInitializerEvent with _$DataInitializerEvent {
  const factory DataInitializerEvent.onFetchData() = _OnFetchData;
}
