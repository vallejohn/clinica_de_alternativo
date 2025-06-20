import 'dart:async';

import 'package:clinica_de_alternativo/src/account/domain/account_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final _onGetDetailsUseCase = GetIt.instance<OnGetAccountDetailsUseCase>();
  final _onUpdateDetailsUseCase = GetIt.instance<OnUpdateAccountDetailsUseCase>();


  AccountBloc() : super(const AccountState()) {
    on<_OnGetDetails>(_onGetDetails);
    on<_OnUpdateDetails>(_onUpdateDetails);
  }

  FutureOr<void> _onGetDetails(_OnGetDetails event, Emitter<AccountState> emit)async {
    emit(state.copyWith(status: AccountStatus.loading));

    final dataOrError = await _onGetDetailsUseCase(event.id);

    dataOrError.fold((l){
      emit(state.copyWith(status: AccountStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (profile){
      emit(state.copyWith(status: AccountStatus.success, message: 'Fetched successfully', profile: profile));
    });
  }

  FutureOr<void> _onUpdateDetails(_OnUpdateDetails event, Emitter<AccountState> emit)async {
    emit(state.copyWith(status: AccountStatus.loading));

    final dataOrError = await _onUpdateDetailsUseCase(event.profile);

    dataOrError.fold((l){
      emit(state.copyWith(status: AccountStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (_){
      emit(state.copyWith(status: AccountStatus.success, message: 'Fetched successfully', profile: event.profile));
    });
  }
}
