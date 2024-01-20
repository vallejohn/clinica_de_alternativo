import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/router/app_router.dart';
import 'package:clinica_de_alternativo/src/account/data/models/branch.dart';
import 'package:clinica_de_alternativo/src/authentication/core/params.dart';
import 'package:clinica_de_alternativo/src/authentication/data/model/profile_information.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/auth_checker/auth_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/login/login_bloc.dart';
import 'package:clinica_de_alternativo/src/authentication/presentation/blocs/profile_checker/profile_checker_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/data/model/product.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/products/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'startup_page.dart';
part 'login_page.dart';
part 'profile_completion_page.dart';