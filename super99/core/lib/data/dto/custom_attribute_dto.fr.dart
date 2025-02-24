class CustomAttributeDTO {
  final String code;
  final String value;

  const CustomAttributeDTO({
    required this.code,
    required this.value,
  });

  factory CustomAttributeDTO.fromJson(Map<String, dynamic> json) {
    String value = "";
    try {
      value = json['selected_options'] != null ? (json['selected_options'] as List).first['value'] : json['value'];
    } catch (e) {}
    return CustomAttributeDTO(
      code: json['code'],
      value: value,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'value': value,
    };
  }
}

extension CustomAttributeDTOX on List<CustomAttributeDTO> {
  /// Convert to graphql format for mutation or query
  String toGraphql() => '''[
        ${map((e) => '{attribute_code: "${e.code}" value: "${e.value}"}').join(',')}
      ]''';
}
