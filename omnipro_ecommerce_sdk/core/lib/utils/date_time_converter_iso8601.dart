import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverterISO8601 implements JsonConverter<DateTime, String> {
  const DateTimeConverterISO8601();

  @override
  DateTime fromJson(String dateString) => DateTime.parse(dateString);

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
