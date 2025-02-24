class AddToCartOmsOptions {
  final String omsCid;
  final String omsCode;
  final String? omsNotes;
  final String omsShippingMethod;
  final String? omsStoreName;

  AddToCartOmsOptions({
    required this.omsCid,
    required this.omsCode,
    this.omsNotes,
    required this.omsShippingMethod,
    this.omsStoreName,
  });

  AddToCartOmsOptions copyWith({
    String? omsCid,
    String? omsCode,
    String? omsNotes,
    String? omsShippingMethod,
    String? omsStoreName,
  }) {
    return AddToCartOmsOptions(
      omsCid: omsCid ?? this.omsCid,
      omsCode: omsCode ?? this.omsCode,
      omsNotes: omsNotes ?? this.omsNotes,
      omsShippingMethod: omsShippingMethod ?? this.omsShippingMethod,
      omsStoreName: omsStoreName ?? this.omsStoreName,
    );
  }
}
