import 'package:equatable/equatable.dart';

class EnabledShippingMethod extends Equatable {
  final String methodCode;
  final String methodLabel;

  EnabledShippingMethod({
    required this.methodCode,
    required this.methodLabel,
  });

  @override
  List<Object?> get props => [
        methodCode,
        methodLabel,
      ];
}
