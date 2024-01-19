import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/account/domain/account_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../data/models/role.dart';

part 'role_event.dart';
part 'role_state.dart';
part 'role_bloc.freezed.dart';

class RoleBloc extends Bloc<RoleEvent, RoleState> {
  final _onGetRolesUseCase = GetIt.instance<OnGetRolesUseCase>();
  final _onAddUseCase = GetIt.instance<OnAddRoleUseCase>();

  RoleBloc() : super(const RoleState()) {
    on<_OnFetch>(_onFetch);
    on<_OnAdd>(_onAdd);
  }
  FutureOr<void> _onFetch(_OnFetch event, Emitter<RoleState> emit)async {
    emit(state.copyWith(status: RoleStatus.loading));

    final dataOrError = await _onGetRolesUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: RoleStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (roles){
      emit(state.copyWith(status: RoleStatus.success, message: 'Fetched successfully', roles: roles));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<RoleState> emit)async {
    emit(state.copyWith(status: RoleStatus.loading));

    final dataOrError = await _onAddUseCase(event.role);

    dataOrError.fold((l){
      emit(state.copyWith(status: RoleStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (role){
      final roles = [...state.roles];
      roles.add(role);
      emit(state.copyWith(status: RoleStatus.success, message: 'Fetched successfully', roles: roles));
    });
  }
}
