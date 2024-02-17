import 'package:bloc/bloc.dart';
import 'package:clinica_de_alternativo/src/account/data/models/branch.dart';
import 'package:clinica_de_alternativo/src/account/data/models/module.dart';
import 'package:clinica_de_alternativo/src/account/data/models/product_type.dart';
import 'package:clinica_de_alternativo/src/account/data/models/role.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:clinica_de_alternativo/src/inventory/data/model/product.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../../../src/account/domain/account_usecases.dart';
import '../../../src/inventory/domain/product_usecases.dart';

part 'data_initializer_event.dart';
part 'data_initializer_state.dart';
part 'data_initializer_bloc.freezed.dart';

class DataInitializerBloc extends Bloc<DataInitializerEvent, DataInitializerState> {
  final _onGetDetailsUseCase = GetIt.instance<OnGetAccountDetailsUseCase>();
  final _onGetRolesUseCase = GetIt.instance<OnGetRolesUseCase>();
  final _onGetBranchUseCase = GetIt.instance<OnGetBranchesUseCase>();
  final _onGetModulesUseCase = GetIt.instance<OnGetModulesUseCase>();
  final _onFetchListUseCase = GetIt.instance<OnFetchProductsUseCase>();
  final _onFetchProdTypeListUseCase = GetIt.instance<OnFetchProductTypesUseCase>();
  final _onGetEmpListUseCase = GetIt.instance<OnGetAccountsUseCase>();

  DataInitializerBloc() : super(const DataInitializerState()) {
    on<_OnFetchData>((event, emit)async {
      emit(state.copyWith(status: DataInitializerStatus.loading));

      final dataOrError = await _onGetDetailsUseCase(FirebaseAuth.instance.currentUser!.uid);

      dataOrError.fold((l){
       // emit(state.copyWith(status: AccountStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (profile){
        emit(state.copyWith(profile: profile));
      });

      final roleOrError = await _onGetRolesUseCase();

      roleOrError.fold((l){
        //emit(state.copyWith(status: AccountStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (roles){
        final filteredRoles = roles.where((element) => element.id == state.profile!.role!.id);

        emit(state.copyWith(
          roles: roles,
          profile: filteredRoles.isNotEmpty
              ? state.profile?.copyWith(role: filteredRoles.first)
              : state.profile,
        ));
      });

      final branchesOrError = await _onGetBranchUseCase();

      branchesOrError.fold((l){
        //emit(state.copyWith(status: BranchStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (branches){
        emit(state.copyWith(branches: branches));
      });

      final moduleOrError = await _onGetModulesUseCase();

      moduleOrError.fold((l){
        //emit(state.copyWith(status: ModuleStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (modules){
        emit(state.copyWith(modules: modules));
      });

      final productsOrError = await _onFetchListUseCase();

      productsOrError.fold((l){
        //emit(state.copyWith(status: ProductStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (products){
        emit(state.copyWith(products: products));
      });

      final typeOrError = await _onFetchProdTypeListUseCase();

      typeOrError.fold((l){
        //emit(state.copyWith(status: ProductTypeStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (types){
        emit(state.copyWith(productTypes: types));
      });

      final employeesOrError = await _onGetEmpListUseCase();

      employeesOrError.fold((l){
        //emit(state.copyWith(status: EmployeeStatus.failed, message: l.when(firebase: (error) => error.message!,)));
      }, (profiles){
        emit(state.copyWith(employees: profiles));
      });

      emit(state.copyWith(status: DataInitializerStatus.success));
    });
  }
}
