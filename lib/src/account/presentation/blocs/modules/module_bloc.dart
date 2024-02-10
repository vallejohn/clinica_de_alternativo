import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../data/models/module.dart';
import '../../../domain/account_usecases.dart';

part 'module_event.dart';
part 'module_state.dart';
part 'module_bloc.freezed.dart';

class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  final _onGetModulesUseCase = GetIt.instance<OnGetModulesUseCase>();
  final _onAddUseCase = GetIt.instance<OnAddModuleUseCase>();

  ModuleBloc() : super(const ModuleState()) {
    on<_OnFetch>(_onFetch);
    on<_OnAdd>(_onAdd);
  }
  FutureOr<void> _onFetch(_OnFetch event, Emitter<ModuleState> emit)async {
    emit(state.copyWith(status: ModuleStatus.loading));

    final dataOrError = await _onGetModulesUseCase();

    dataOrError.fold((l){
      emit(state.copyWith(status: ModuleStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (modules){
      emit(state.copyWith(status: ModuleStatus.success, message: 'Fetched successfully', modules: modules));
    });
  }

  FutureOr<void> _onAdd(_OnAdd event, Emitter<ModuleState> emit)async {
    emit(state.copyWith(status: ModuleStatus.loading));

    final dataOrError = await _onAddUseCase(event.module);

    dataOrError.fold((l){
      emit(state.copyWith(status: ModuleStatus.failed, message: l.when(firebase: (error) => error.message!,)));
    }, (module){
      final modules = [...state.modules];
      modules.add(module);
      emit(state.copyWith(status: ModuleStatus.success, message: 'Fetched successfully', modules: modules));
    });
  }
}
