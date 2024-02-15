import 'dart:async';

import 'package:clinica_de_alternativo/core/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/account/core/params.dart';
import 'package:clinica_de_alternativo/src/account/domain/account_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/exceptions/failure.dart';
import '../../../../authentication/data/model/profile_information.dart';

part 'employees_event.dart';
part 'employees_state.dart';
part 'employees_bloc.freezed.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  final _onGetListUseCase = GetIt.instance<OnGetAccountsUseCase>();
  final _onAddUseCase = GetIt.instance<OnAddAccountUseCase>();
  final _onUpdateDetailsUseCase = GetIt.instance<OnUpdateAccountDetailsUseCase>();

  EmployeesBloc() : super(const EmployeesState()) {
    on<_OnStarted>((event, emit) => emit(state.copyWith(employees: event.employees)));
    on<_OnGetList>(_onGetList);
    on<_OnAdd>(_onAdd);
    on<_OnUpdate>(_onUpdate);
  }

  FutureOr<void> _onGetList(_OnGetList event, Emitter<EmployeesState> emit)async {
    emit(state.copyWith(status: EmployeeStatus.loading));

    final dataOrError = await _onGetListUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: EmployeeStatus.failed, message: l.getMessage()));
    }, (profiles){
      emit(state.copyWith(status: EmployeeStatus.success, message: 'Fetched successfully', employees: profiles));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<EmployeesState> emit)async {
    emit(state.copyWith(status: EmployeeStatus.loading));

    final dataOrError = await _onAddUseCase(event.params);

    dataOrError.fold((l){
      emit(state.copyWith(status: EmployeeStatus.failed, message: l.getMessage()));
    }, (profile){
      final employees = [...state.employees];
      employees.add(profile);
      emit(state.copyWith(status: EmployeeStatus.success, message: 'Fetched successfully', employees: employees));
    });
  }

  FutureOr<void> _onUpdate(_OnUpdate event, Emitter<EmployeesState> emit)async {
    emit(state.copyWith(status: EmployeeStatus.loading));

    final dataOrError = await _onUpdateDetailsUseCase(event.profile);

    dataOrError.fold((l){
      emit(state.copyWith(status: EmployeeStatus.failed, message: l.getMessage(), errorCode: l.getCode()));
    }, (_){
      final profiles = [...state.employees];
      final removedAccountIndex = profiles.indexWhere((element) => element.id == event.profile.id);
      profiles.replaceRange(removedAccountIndex, removedAccountIndex + 1, [event.profile]);

      emit(state.copyWith(status: EmployeeStatus.success, message: 'Fetched successfully', employees: profiles));
    });
  }
}
