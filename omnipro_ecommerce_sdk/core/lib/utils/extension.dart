import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import 'constants.dart';

extension IterableExt on Iterable {
  Iterable superJoin(dynamic separator) {
    final iterator = this.iterator;
    if (!iterator.moveNext()) return [];

    final l = [iterator.current];
    while (iterator.moveNext()) {
      l
        ..add(separator)
        ..add(iterator.current);
    }
    return l;
  }
}

extension EitherExtension<L, R> on Either<L, R> {
  R? getRight() => fold<R?>((_) => null, (r) => r);

  L? getLeft() => fold<L?>((l) => l, (_) => null);
}

extension RemoveQuotes on String {
  String removeQuotesInKeys() => replaceAllMapped(
        RegExp(r'"(.+)"\s*:\s*'),
        (match) => '${match.group(1)}: ',
      );
}

String toParamMutationHelper(String jsonEncode) {
  String mutation = jsonEncode.replaceAllMapped(RegExp(r'"(\w+)":'), (match) => '${match[1]}:');

  mutation = mutation.replaceFirst('{', '');

  return mutation.replaceRange(mutation.lastIndexOf('}'), mutation.lastIndexOf('}') + 1, '');
}

extension ValidatorField on String? {
  String? validatorEmpty(String messageError) => (this ?? '').isEmpty ? messageError : null;
}

String replaceCommasExceptInsideBrackets(String input) {
  RegExp pattern = RegExp(r',(?![^\[]*])');
  return input.replaceAll(pattern, '');
}

String toMutationHelper(String jsonEncode) {
  String mutation = jsonEncode.replaceAllMapped(RegExp(r'"(\w+)":'), (match) => '${match[1]}:');

  return replaceCommasExceptInsideBrackets(mutation);
}

extension ToCurrency on double {
  /// Extension for double to convert to currency format with default locale and symbol currency.
  String toCurrency({bool includeSymbol = true}) => NumberFormat.currency(
          locale: Constants.defaultLocaleCurrency,
          customPattern: "${includeSymbol ? Constants.defaultSymbolCurrency : ''} #,##0.00")
      .format(this);
}

extension CurrencyFormat on String {
  /// Converts a string to a double and then converts it to a currency format.
  /// The default locale and symbol currency are used.
  String toCurrency() {
    final number = double.parse(this);
    return number.toCurrency();
  }
}

extension ListToQueryVariablesFormatting on List<String> {
  /// Formats the list of strings for use in a query, surrounding each
  /// element with double quotes and separating the elements with commas and spaces.
  ///
  /// Example:
  /// ```
  /// final listSkus = ['sku1', 'sku2', 'sku3'];
  /// final formattedString = listSkus.formatForQuery();
  /// print(formattedString);  // Output: ["sku1", "sku2", "sku3"]
  /// ```
  String formatForQuery() {
    final formattedList = map((item) => '"$item"').join(', ');
    return '[$formattedList]';
  }
}

extension DateTimeToString on DateTime {
  /// Converts a [DateTime] to a string formatted as yyyy-MM-dd.
  String toStringYYYmmDD() => DateFormat('yyyy-MM-dd').format(this);
}

extension DateTimeExtension on DateTime {
  DateTime toUtcCustom() {
    return DateTime.utc(year, month, day, hour, minute, second);
  }

  String customFormat(String pattern, BuildContext context, {bool isUtcLocal = true}) {
    if (isUtcLocal) {
      return DateFormat(pattern, Localizations.localeOf(context).languageCode).format(toUtcCustom().toLocal());
    }

    return DateFormat(pattern, Localizations.localeOf(context).languageCode).format(this);
  }

  bool isToday() {
    DateTime now = DateTime.now();

    return DateTime(now.year, now.month, now.day).difference(DateTime(year, month, day)).inDays == 0;
  }
}

extension BuildContextSelectedLanguage on BuildContext {
  String get selectedLanguage => Localizations.localeOf(this).languageCode;

  bool get isSpanish => Localizations.localeOf(this).languageCode == 'es';

  bool get isEnglish => Localizations.localeOf(this).languageCode == 'en';
}

bool valudationCardNumber(String cardNumber) {
  RegExp visaRegex = RegExp(r'^4[0-9]{12}(?:[0-9]{3})?$');
  RegExp mastercardRegex = RegExp(r'^5[1-5][0-9]{14}$');
  RegExp amexRegex = RegExp(r'^3[47][0-9]{13}$');
  RegExp discoverRegex = RegExp(r'^6(?:011|5[0-9]{2})[0-9]{12}$');

  if (visaRegex.hasMatch(cardNumber)) {
    return true;
  } else if (mastercardRegex.hasMatch(cardNumber)) {
    return true;
  } else if (amexRegex.hasMatch(cardNumber)) {
    return true;
  } else if (discoverRegex.hasMatch(cardNumber)) {
    return true;
  } else {
    return false;
  }
}

extension Base64ImageSize on String {
  int get imageSizeInBytes {
    // Count the number of padding '=' characters at the end of the string
    int padding = 0;
    for (int i = length - 1; i >= 0 && this[i] == '='; i--) {
      padding++;
    }

    // Calculate the byte size using the adjusted formula
    return ((length - padding) * 3 / 4).ceil();
  }
}

/// Calculates the Haversine distance between two geo-coordinates in kilometers.
double calculateHaversineDistance(double lat1, double lon1, double lat2, double lon2) {
  // Difference in longitudes
  double theta = lon1 - lon2;

  // Using Haversine formula to calculate distance between two lat/lng points
  double dist = sin(deg2rad(lat1)) * sin(deg2rad(lat2)) + cos(deg2rad(lat1)) * cos(deg2rad(lat2)) * cos(deg2rad(theta));

  // Arc cosine of distance
  dist = acos(dist);

  // Convert the distance from radians to degrees
  dist = rad2deg(dist);

  // Convert the distance to nautical miles and then to kilometers
  dist = dist * 60 * 1.1515 * 1.60934; // conversion to kilometers

  return dist;
}

/// Converts degrees to radians.
double deg2rad(double deg) {
  return (deg * pi / 180.0);
}

/// Converts radians to degrees.
double rad2deg(double rad) {
  return (rad * 180.0 / pi);
}

extension GoRouterExtension on GoRouter {
  // Navigate back to a specific route
  void popUntilPath(String ancestorPath) {
    while (routerDelegate.currentConfiguration.matches.last.matchedLocation != ancestorPath) {
      if (!canPop()) {
        return;
      }
      pop();
    }
  }
}
