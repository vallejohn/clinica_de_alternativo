import 'package:clinica_de_alternativo/clinica_de_alternativo.dart';
import 'package:clinica_de_alternativo/core/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'locator.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = AppBlocObserver();

  await Firebase.initializeApp(
    options: FlavorConfig.instance.variables['firebase_options'] as FirebaseOptions,
  );

  await setupLocator();

  runApp(const ClinicaDeAlternativo());
}

