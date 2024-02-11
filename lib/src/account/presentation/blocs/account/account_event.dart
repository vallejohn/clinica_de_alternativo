part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.onGetDetails(String id, {Role? role}) = _OnGetDetails;
  const factory AccountEvent.onUpdateRoleDetails(ProfileInformation profile) = _OnUpdateDetails;
  const factory AccountEvent.onSaveDetails(ProfileInformation profile) = _OnSaveDetails;
}
