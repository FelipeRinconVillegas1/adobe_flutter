import 'dart:ui';

import 'package:design_system/foundations/images.dart';
import 'package:design_system/foundations/icons.dart';

enum TypeCard {
  visa(
    "001",
    "VI",
    "Visa",
    [const Color(0xFF243F92), const Color(0xFF1C3071)],
    "Crédito",
    "Credit",
    ImagesOmni.s99visa,
    OmniIcons.s99Visa,
  ),
  mastercard(
    "002",
    "MC",
    "Mastercard",
    [const Color(0xFF404040), const Color(0xFF323232)],
    "Crédito",
    "Credit",
    ImagesOmni.s99masterCard,
    OmniIcons.s99Mastercard,
  ),
  americanExpress(
    "003",
    "AE",
    "American Express",
    [const Color(0xFFb9d9c3), const Color(0xFF788d7f)],
    "Crédito",
    "Credit",
    ImagesOmni.s99americanExpress,
  ),
  discover(
    "004",
    "DI",
    "Discover",
    [const Color(0xFFf1f1f1), const Color(0xFFfe6400)],
    "Crédito",
    "Credit",
  ),
  dinersClub(
    "005",
    "DN",
    "Diners Club",
    [const Color(0xFFbecbd1), const Color(0xFF8ca2ad)],
    "Crédito",
    "Credit",
    ImagesOmni.s99dinnersClub,
  ),
  jcb(
    "007",
    "JCB",
    "JCB",
    [const Color(0xFFF5F5F5), const Color(0xFFEAEAEA)],
    "Crédito",
    "Credit",
  ),
  maestroI(
    "042",
    "MI",
    "Maestro Internacional",
    [const Color(0xFFF5F5F5), const Color(0xFFEAEAEA)],
    "Crédito",
    "Credit",
  ),
  maestroD(
    "024",
    "MD",
    "Maestro Domestic (UK)",
    [const Color(0xFFF5F5F5), const Color(0xFFEAEAEA)],
    "Crédito",
    "Credit",
  ),
  enRoute(
    "014",
    "ER",
    "Enroute",
    [const Color(0xFFF5F5F5), const Color(0xFFEAEAEA)],
    "Crédito",
    "Credit",
  ),
  unknown(
    "",
    "",
    "",
    [const Color(0xFFF5F5F5), const Color(0xFFEAEAEA)],
    "",
    "",
  );

  const TypeCard(this.code, this.shortLabel, this.label, this.colors, this.typeEs, this.typeEn,
      [this.image, this.icon]);

  final String shortLabel;
  final String label;
  final String code;
  final ImagesOmni? image;
  final OmniIcons? icon;
  final List<Color> colors;
  final String typeEn;
  final String typeEs;
}

TypeCard getTypeByShortLabel(String shortLabel) {
  return TypeCard.values.firstWhere((e) => e.shortLabel == shortLabel, orElse: () => TypeCard.unknown);
}

TypeCard getTypeByCode(String code) {
  return TypeCard.values.firstWhere((e) => e.code == code, orElse: () => TypeCard.unknown);
}

///This method is according to the cybersource verification
///https://developer.cybersource.com/docs/cybs/en-us/test-data/developer/all/so/test-data/best_practices_intro/card_type_id.html
///This method is used to determine the type of credit card
TypeCard determineCardType(String creditCardNumber) {
  if (creditCardNumber.isEmpty || !RegExp(r'^\d+$').hasMatch(creditCardNumber)) {
    return TypeCard.unknown;
  }

  final length = creditCardNumber.length;

  // American Express
  if (length == 15 && creditCardNumber.startsWith(RegExp(r'3[47]'))) {
    return TypeCard.americanExpress;
  }

  // Diners Club and Carte Blanche
  if (length == 14 && creditCardNumber.startsWith('3')) {
    final firstTwoDigits = int.parse(creditCardNumber.substring(0, 2));
    final firstSixDigits = int.parse(creditCardNumber.substring(0, 6));

    if ((firstTwoDigits == 30 && firstSixDigits >= 300000 && firstSixDigits <= 305999) ||
        (firstSixDigits >= 309500 && firstSixDigits <= 309599) ||
        (firstSixDigits >= 360000 && firstSixDigits <= 369999) ||
        (firstSixDigits >= 380000 && firstSixDigits <= 399999)) {
      return TypeCard.dinersClub;
    }
  }

  // Discover
  if (length == 16) {
    final firstSixDigits = int.parse(creditCardNumber.substring(0, 6));
    if ((firstSixDigits >= 601100 && firstSixDigits <= 601109) ||
        (firstSixDigits >= 601120 && firstSixDigits <= 601149) ||
        firstSixDigits == 601174 ||
        (firstSixDigits >= 601177 && firstSixDigits <= 601179) ||
        (firstSixDigits >= 601186 && firstSixDigits <= 601199) ||
        (firstSixDigits >= 644000 && firstSixDigits <= 659999) ||
        creditCardNumber.startsWith('6011')) {
      return TypeCard.discover;
    }
  }

  // enRoute
  if (length == 15) {
    final firstFourDigits = int.parse(creditCardNumber.substring(0, 4));
    if (firstFourDigits == 2014 || firstFourDigits == 2149) {
      return TypeCard.enRoute;
    }
  }

  // JCB
  if (length >= 16 && length <= 19) {
    final firstFourDigits = int.parse(creditCardNumber.substring(0, 4));
    if (firstFourDigits >= 3528 && firstFourDigits <= 3589) {
      return TypeCard.jcb;
    }
  }

  // Mastercard
  if (length == 16) {
    final firstTwoDigits = int.parse(creditCardNumber.substring(0, 2));
    final firstSixDigits = int.parse(creditCardNumber.substring(0, 6));
    if ((firstTwoDigits >= 51 && firstTwoDigits <= 55) || (firstSixDigits >= 222100 && firstSixDigits <= 272099)) {
      return TypeCard.mastercard;
    }
  }

  // Maestro
  if (length >= 12 && length <= 19) {
    final firstFourDigits = int.parse(creditCardNumber.substring(0, 4));
    final firstTwoDigits = int.parse(creditCardNumber.substring(0, 2));

    // UK Domestic Maestro (includes new prefixes like 5641)
    if (firstFourDigits == 6759 ||
        firstFourDigits == 6761 ||
        firstFourDigits == 6762 ||
        firstFourDigits == 6763 ||
        firstFourDigits == 5641) {
      // Added 5641 for UK Domestic
      return TypeCard.maestroD;
    }

    // International Maestro
    if ((firstTwoDigits == 50) || (firstTwoDigits >= 56 && firstTwoDigits <= 69)) {
      return TypeCard.maestroI;
    }
  }

  // Visa
  if ((length >= 13 && length <= 19 && creditCardNumber.startsWith('4')) || creditCardNumber.startsWith('4')) {
    return TypeCard.visa;
  }

  // Unknown card type
  return TypeCard.unknown;
}

bool cardNumberValidation(String cardNumber) {
  RegExp visaRegex = RegExp(r'^4[0-9]{12}(?:[0-9]{3})?$');
  RegExp mastercardRegex =
      RegExp(r'^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$');
  RegExp amexRegex = RegExp(r'^3[47][0-9]{13}$');
  RegExp discoverRegex = RegExp(r'^6(?:011|5[0-9]{2})[0-9]{12}$');
  RegExp dinnersClubRegex = RegExp(r'^3(?:0[0-5]|[68][0-9])[0-9]{11}$');
  if (visaRegex.hasMatch(cardNumber)) {
    return true;
  } else if (mastercardRegex.hasMatch(cardNumber)) {
    return true;
  } else if (amexRegex.hasMatch(cardNumber)) {
    return true;
  } else if (discoverRegex.hasMatch(cardNumber)) {
    return true;
  } else if (dinnersClubRegex.hasMatch(cardNumber)) {
    return true;
  } else {
    return false;
  }
}
