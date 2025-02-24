import 'package:equatable/equatable.dart';

class LoyaltyBenefitModel extends Equatable {
  final String image;
  final String code;
  final String title;
  final String description;

  LoyaltyBenefitModel({
    required this.image,
    required this.code,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [image, code, title, description];
}
