import 'dart:async';

import 'package:clinica_de_alternativo/core/core.dart';
import 'package:clinica_de_alternativo/core/exceptions/failure.dart';
import 'package:clinica_de_alternativo/core/extensions.dart';
import 'package:clinica_de_alternativo/src/account/domain/account_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../data/models/role.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final _onGetDetailsUseCase = GetIt.instance<OnGetAccountDetailsUseCase>();
  final _onUpdateDetailsUseCase = GetIt.instance<OnUpdateAccountDetailsUseCase>();


  AccountBloc() : super(const AccountState()) {
    on<_OnStarted>((event, emit) => emit(state.copyWith(profile: event.profileInformation)));
    on<_OnGetDetails>(_onGetDetails);
    on<_OnUpdateDetails>(_onUpdateDetails);
    on<_OnSaveDetails>(_onSaveDetails);
  }

  FutureOr<void> _onGetDetails(_OnGetDetails event, Emitter<AccountState> emit)async {
    emit(state.copyWith(status: AccountStatus.loading));

    final dataOrError = await _onGetDetailsUseCase(event.id);

    dataOrError.fold((l){
      emit(state.copyWith(status: AccountStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (profile){
      emit(state.copyWith(status: AccountStatus.success, message: 'Fetched successfully', profile: event.role == null? profile : profile!.copyWith(role: event.role)));
    });
  }

  FutureOr<void> _onUpdateDetails(_OnUpdateDetails event, Emitter<AccountState> emit)async {
    appLogger.w(event.profile);
    emit(state.copyWith(profile: event.profile));
  }

  FutureOr<void> _onSaveDetails(_OnSaveDetails event, Emitter<AccountState> emit)async {
    emit(state.copyWith(status: AccountStatus.loading));

    final dataOrError = await _onUpdateDetailsUseCase(event.profile);

    dataOrError.fold((l){
      emit(state.copyWith(status: AccountStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (_){
      emit(state.copyWith(status: AccountStatus.success, message: 'Fetched successfully', profile: event.profile));
    });
  }
}
