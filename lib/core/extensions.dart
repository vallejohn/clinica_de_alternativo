import 'package:clinica_de_alternativo/core/core.dart';
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
      firebase: (firebase) {
        switch(firebase.code){
          case 'permission-denied':
            return 'You are not allowed to perform this operation. '
                'Please contact your administrator in case this permission is missing from your account.';
          default:
            return firebase.message!;
        }
      },
      documentException: (documentException) => documentException.message,
    );
  }

  ErrorCode? getCode(){
    return when(
      firebase: (firebase){
        switch(firebase.code){
          case 'permission-denied':
            return ErrorCode.permissionDenied;
          default:
            return null;
        }
      },
      documentException: (documentException) => null,
    );
  }
}

