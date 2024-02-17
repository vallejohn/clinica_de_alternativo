import 'dart:async';

import 'package:clinica_de_alternativo/core/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clinica_de_alternativo/src/account/domain/account_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../../../core/exceptions/failure.dart';
import '../../../data/models/branch.dart';

part 'branch_event.dart';
part 'branch_state.dart';
part 'branch_bloc.freezed.dart';

class BranchBloc extends Bloc<BranchEvent, BranchState> {
  final _onGetBranchUseCase = GetIt.instance<OnGetBranchesUseCase>();
  final _onAddUseCase = GetIt.instance<OnAddBranchUseCase>();

  BranchBloc() : super(const BranchState()) {
    on<_OnStarted>((event, emit) => emit(state.copyWith(branches: event.branch)));
    on<_OnFetch>(_onFetch);
    on<_OnAdd>(_onAdd);
  }

  FutureOr<void> _onFetch(_OnFetch event, Emitter<BranchState> emit)async {
    emit(state.copyWith(status: BranchStatus.loading));

    final dataOrError = await _onGetBranchUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: BranchStatus.failed, message: l.getMessage()));
    }, (branches){
      emit(state.copyWith(status: BranchStatus.success, message: 'Fetched successfully', branches: branches));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<BranchState> emit)async {
    emit(state.copyWith(status: BranchStatus.loading));

    final dataOrError = await _onAddUseCase(event.branch);

    dataOrError.fold((l){
      emit(state.copyWith(status: BranchStatus.failed, message: l.getMessage()));
    }, (branch){
      final branches = [...state.branches];
      branches.add(branch);
      emit(state.copyWith(status: BranchStatus.success, message: 'Fetched successfully', branches: branches));
    });
  }
}
