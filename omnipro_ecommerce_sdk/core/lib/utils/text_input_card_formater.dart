import 'package:flutter/services.dart';

class TextInputCardFormatter extends TextInputFormatter {
  TextInputCardFormatter();

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text.replaceAll(RegExp(r'\D'), '');
    String formattedText = '';
    for (int i = 0; i < text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        formattedText += ' ';
      }
      formattedText += text[i];
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
