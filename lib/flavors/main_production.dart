import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:clinica_de_alternativo/main.dart' as base;

import '../firebase_options_prod.dart';

void main(){
  FlavorConfig(
    name: 'production',
    variables: {
      'firebase_options': DefaultFirebaseOptionsProduction.currentPlatform
    }
  );
  return base.main();
}