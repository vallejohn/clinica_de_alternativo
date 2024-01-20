import 'package:clinica_de_alternativo/src/account/core/params.dart';
import 'package:clinica_de_alternativo/src/account/domain/repositories/account_repository.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:dartz/dartz.dart';

import '../../../core/core.dart';
import '../../../core/exceptions/failure.dart';
import '../data/models/branch.dart';
import '../data/models/role.dart';

part 'usecases/on_get_branches_usecase.dart';
part 'usecases/on_add_branch_usecase.dart';
part 'usecases/on_get_roles_usecase.dart';
part 'usecases/on_add_role_usecase.dart';
part 'usecases/on_get_account_details_usecase.dart';
part 'usecases/on_update_account_details_usecase.dart';
part 'usecases/on_get_accounts_usecase.dart';
part 'usecases/on_add_account_usecase.dart';