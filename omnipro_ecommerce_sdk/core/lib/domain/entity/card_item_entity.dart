import 'dart:convert';

import 'package:equatable/equatable.dart';

class CardItemEntity extends Equatable {
  const CardItemEntity({
    required this.details,
    required this.methodCode,
    required this.hash,
    required this.type,
    required this.isDefault,
  });
  final String details;
  final String methodCode;
  final String hash;
  final String type;
  final bool isDefault;

  CardItemEntityDetails get detailsParsed => CardItemEntityDetails.fromJson(jsonDecode(details));

  @override
  List<Object?> get props => [details, methodCode, hash, type, isDefault];
}

class CardItemEntityDetails extends Equatable {
  CardItemEntityDetails.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        maskedCC = json['maskedCC'],
        expirationDate = json['expirationDate'],
        instrumentIdentifier = json['instrumentIdentifier'],
        incrementId = json['incrementId'];

  const CardItemEntityDetails({
    required this.type,
    required this.maskedCC,
    required this.expirationDate,
    this.instrumentIdentifier,
    this.incrementId,
  });

  final String type;
  final String maskedCC;
  final String expirationDate;
  final String? instrumentIdentifier;
  final String? incrementId;

  String getExpirationYear() {
    return expirationDate.split("/")[1];
  }

  String getExpirationMonth() {
    return expirationDate.split("/")[0];
  }

  @override
  List<Object?> get props => [type, maskedCC, expirationDate, instrumentIdentifier, incrementId];
}
