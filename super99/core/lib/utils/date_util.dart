import 'package:intl/intl.dart';

class DateUtil {
  static DateTime parseDateSlashFormat(String date) => DateTime.parse(date.replaceAll('/', '-'));

  static bool isOver18YearsOld(Object? dateForCompare) {
    if (dateForCompare == null) return false;

    DateTime dateCompare = getDateTime(dateForCompare);
    DateTime adultDate = DateTime(dateCompare.year + 18, dateCompare.month, dateCompare.day);

    return adultDate.isBefore(DateTime.now());
  }

  static DateTime getDateTime(Object date, {bool? adjustSlashIfString = true}) {
    if (date is String) return adjustSlashIfString == true ? parseDateSlashFormat(date) : DateTime.parse(date);

    return date as DateTime;
  }

  String formatDateTimeToCustomFormat(DateTime dateTime, int offsetHours) {
    // Formato base para la fecha y hora
    String formattedDate = DateFormat('yyyy-MM-ddTHH:mm:ss').format(dateTime);
    // Agregar la zona horaria en el formato ±HH:mm
    String timezoneOffset = offsetHours.isNegative
        ? '-${offsetHours.abs().toString().padLeft(2, '0')}:00'
        : '+${offsetHours.toString().padLeft(2, '0')}:00';
    return '$formattedDate$timezoneOffset';
  }
}
