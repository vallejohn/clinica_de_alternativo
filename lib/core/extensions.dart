import 'package:clinica_de_alternativo/core/exceptions/failure.dart';
import 'package:intl/intl.dart';

extension DoubleParsing on double {
  String toPeso() {
    final oCcy = NumberFormat("#,##0.00", "en_US");
    return oCcy.format(this);
  }
}

extension FailureTpString on Failure{
  String getMessage(){
    return when(
      firebase: (firebase) => firebase.message!,
      documentException: (documentException) => documentException.message,
    );
  }
}

