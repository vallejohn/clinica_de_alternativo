part of 'account_bloc.dart';

enum AccountStatus{initial, loading, success, failed}

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(AccountStatus.initial) AccountStatus status,
    @Default('') String message,
    ProfileInformation? profile,
  }) = _AccountState;
}
