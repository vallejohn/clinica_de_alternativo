part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.onGetDetails(String id) = _OnGetDetails;
  const factory AccountEvent.onUpdateDetails(ProfileInformation profile) = _OnUpdateDetails;
}
