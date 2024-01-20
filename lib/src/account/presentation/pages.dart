

import 'package:auto_route/annotations.dart';
import 'package:clinica_de_alternativo/core/global_widgets/list_tile_item.dart';
import 'package:clinica_de_alternativo/src/account/presentation/blocs/roles/role_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../data/models/branch.dart';
import '../data/models/role.dart';
import 'blocs/account/account_bloc.dart';
import 'blocs/branches/branch_bloc.dart';
import 'blocs/employees/employees_bloc.dart';

part 'branches_page.dart';
part 'roles_page.dart';
part 'employees_page.dart';
part 'account_page.dart';