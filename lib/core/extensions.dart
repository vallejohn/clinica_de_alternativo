import 'package:intl/intl.dart';

extension DoubleParsing on double {
  String toPeso() {
    final oCcy = NumberFormat("#,##0.00", "en_US");
    return oCcy.format(this);
  }
}

