import 'package:core/domain/entity/localization_message.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getMessage should return message for valid code', () {
    final localization = LocalizationMessage([
      MessageWithLocalization('en', 'Hello!'),
      MessageWithLocalization('es', 'Hola!'),
    ]);

    expect(localization.getMessage('en'), equals('Hello!'));
    expect(localization.getMessage('es'), equals('Hola!'));
  });

  test('getMessage should return defaultText for invalid code', () {
    final localization = LocalizationMessage([]);

    expect(localization.getMessage('invalid', defaultText: 'Default'), equals('Default'));
  });
}
