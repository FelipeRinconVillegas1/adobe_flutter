class ScheduleList {
  ScheduleList({required this.scheduleDates});

  factory ScheduleList.fromJsonTakeFirstEntry(Map<String, dynamic> jsonData) {
    List<ScheduleDate> scheduleDates = jsonData.entries
        .map((cidEntry) {
          if (cidEntry.value.entries.isEmpty) return <ScheduleDate>[];
          final firstEntry = cidEntry.value.entries.first;
          return (firstEntry.value as Map<String, dynamic>).entries.map((scheduleDateEntry) => ScheduleDate(
                dateObject: ScheduleDate.buildDateTimeStartInterval(date: scheduleDateEntry.key),
                date: scheduleDateEntry.key,
                cid: cidEntry.key,
                source: firstEntry.key,
                intervals: (scheduleDateEntry.value as List<dynamic>)
                    .map((interval) => ScheduleInterval.fromJson({
                          ...interval,
                          'date': scheduleDateEntry.key,
                          'deliveryPrice': interval['delivery_price'],
                          'cid': cidEntry.key,
                          'source': firstEntry.key,
                        }))
                    .toList()
                  ..sort((a, b) => a.dateTimeInterval.compareTo(b.dateTimeInterval)),
              ));
        })
        .expand((i) => i)
        .toList()
      ..sort((a, b) => a.dateObject.compareTo(b.dateObject));

    return ScheduleList(scheduleDates: scheduleDates);
  }

  factory ScheduleList.fromJsonTakeAllEntries(Map<String, dynamic> jsonData) {
    List<ScheduleDate> scheduleDates = jsonData.entries
        .map((cidEntry) {
          if (cidEntry.value.entries.isEmpty) return <ScheduleDate>[];
          return (cidEntry.value as Map<String, dynamic>)
              .entries
              .map((sourceEntry) {
                return (sourceEntry.value as Map<String, dynamic>).entries.map((scheduleDateEntry) => ScheduleDate(
                      dateObject: ScheduleDate.buildDateTimeStartInterval(date: scheduleDateEntry.key),
                      date: scheduleDateEntry.key,
                      cid: cidEntry.key,
                      source: sourceEntry.key,
                      intervals: (scheduleDateEntry.value as List<dynamic>)
                          .map((interval) => ScheduleInterval.fromJson({
                                ...interval,
                                'date': scheduleDateEntry.key,
                                'deliveryPrice': interval['delivery_price'],
                                'cid': cidEntry.key,
                                'source': sourceEntry.key,
                              }))
                          .toList()
                        ..sort((a, b) => a.dateTimeInterval.compareTo(b.dateTimeInterval)),
                    ));
              })
              .expand((i) => i)
              .toList()
            ..sort((a, b) => a.dateObject.compareTo(b.dateObject));
        })
        .expand((i) => i)
        .toList();

    return ScheduleList(scheduleDates: scheduleDates);
  }

  final List<ScheduleDate> scheduleDates;
}

class ScheduleDate {
  ScheduleDate({
    required this.date,
    required this.cid,
    required this.source,
    required this.intervals,
    required this.dateObject,
  });

  final String date;
  final String cid;
  final String source;
  final List<ScheduleInterval> intervals;
  final DateTime dateObject;

  static DateTime buildDateTimeStartInterval({required String date}) {
    final dateParts = date.split('/');
    return DateTime(
      int.parse(dateParts[0]),
      int.parse(dateParts[1]),
      int.parse(dateParts[2]),
    );
  }
}

class ScheduleInterval {
  ScheduleInterval(
      {required this.aid,
      required this.cid,
      required this.source,
      required this.deliveryPrice,
      required this.dateTimeInterval,
      required this.interval});

  factory ScheduleInterval.fromJson(Map<String, dynamic> json) {
    return ScheduleInterval(
      aid: json['aid'],
      cid: json['cid'],
      source: json['source'],
      deliveryPrice: json['deliveryPrice'],
      interval: json['interval'],
      dateTimeInterval: buildDateTimeStartInterval(date: json['date'], interval: json['interval']),
    );
  }

  static DateTime buildDateTimeStartInterval({required String date, required String interval}) {
    final dateParts = date.split('/');
    final intervalParts = interval.split(' - ');
    final startHour = int.parse(intervalParts[0].split(':')[0]);
    final startMinute = int.parse(intervalParts[0].split(':')[1]);
    return DateTime(
      int.parse(dateParts[0]),
      int.parse(dateParts[1]),
      int.parse(dateParts[2]),
      startHour,
      startMinute,
    );
  }

  final String aid;
  final String cid;
  final String source;
  final double deliveryPrice;
  final String interval;
  final DateTime dateTimeInterval;
}
