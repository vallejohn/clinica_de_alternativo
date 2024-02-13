import 'package:auto_route/auto_route.dart';
import 'package:clinica_de_alternativo/core/blocs/widget_helper_cubit.dart';
import 'package:clinica_de_alternativo/core/global_widgets/permission_error_dialog.dart';
import 'package:clinica_de_alternativo/core/router/app_router.dart';
import 'package:clinica_de_alternativo/src/account/data/models/product_type.dart';
import 'package:clinica_de_alternativo/src/inventory/data/model/product.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/poduct_type/product_type_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/blocs/products/products_bloc.dart';
import 'package:clinica_de_alternativo/src/inventory/presentation/widgets/product_type_selection_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/global_widgets/list_tile_item.dart';

part 'products_page.dart';
part 'product_details_page.dart';
part 'add_product_page.dart';