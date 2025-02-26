import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

extension StringX on String {
  String toPascalCase() {
    if (isEmpty) {
      return this;
    }

    // Split the input string by spaces or underscores
    List<String> words = split(RegExp(r'[_\s]'));

    // Capitalize the first letter of each word and join them
    String pascalCaseString = words.map((word) {
      if (word.isEmpty) {
        return '';
      }
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join();

    return pascalCaseString;
  }

  String capitalize() {
    if (isEmpty) {
      return this;
    }
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

extension DoubleNumberFormatting on double {
  double formatNumberTwoDecimalToDouble() {
    final formatter = NumberFormat("#,##0.00");
    String number = formatter.format(this);
    return double.tryParse(number) ?? this;
  }
}
