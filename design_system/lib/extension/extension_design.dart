import 'package:core/utils/extensions/string_extension.dart';

extension RemoveZeroIfDoubleIsDecimal on double {
  String removeZeroIfDoubleIsDecimal() {
    if (this % 1 == 0) {
      return toStringAsFixed(0);
    } else {
      return formatNumberTwoDecimalToDouble().toString();
    }
  }
}