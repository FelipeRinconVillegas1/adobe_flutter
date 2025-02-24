import 'package:core/domain/entity/dropdown_manager/dropdown_option.dart';
import 'package:core/utils/custom_attribute_code.dart';

class CustomAttribute {
  final CustomAttributeCode code;
  final String value;

  CustomAttribute({required this.code, required this.value});

  String toJson() => '{"custom_attribute_code": "${code.value}", "value": "$value"}';
}

extension CustomAttributeExtension on List<CustomAttribute> {
  /// Add optional attribute to the form only if the user select the option
  List<CustomAttribute> addDropdownOptionWithCode(Map<CustomAttributeCode, DropdownOption?> values) {
    final List<CustomAttribute> customAttributes = [...this];
    values.forEach((code, value) {
      if (value != null) {
        customAttributes.add(
          CustomAttribute(
            code: code,
            value: value.code,
          ),
        );
      }
    });

    return customAttributes;
  }

  /// Add optional attribute to the form only if the user select the option yes or no
  List<CustomAttribute> addOptionalAttributeWithBoolean(Map<CustomAttributeCode, bool?> values) {
    final List<CustomAttribute> customAttributes = [...this];
    values.forEach((code, value) {
      if (value != null) {
        customAttributes.add(
          CustomAttribute(
            code: code,
            value: value ? '1' : '0',
          ),
        );
      }
    });
    return customAttributes;
  }
}
