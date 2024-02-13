

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/global_widgets/list_tile_item.dart';
import 'package:clinica_de_alternativo/core/global_widgets/security_role_handler.dart';
import 'package:clinica_de_alternativo/core/router/app_router.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/modules/module_bloc.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/roles/role_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/blocs/widget_helper_cubit.dart';
import '../core/params.dart';
import '../data/models/branch.dart';
import '../data/models/module.dart';
import '../data/models/role.dart';
import 'blocs/account/account_bloc.dart';
import 'blocs/branches/branch_bloc.dart';
import 'blocs/employees/employees_bloc.dart';

part 'branches_page.dart';
part 'roles_page.dart';
part 'employees_page.dart';
part 'account_page.dart';
part 'attache_rules_page.dart';