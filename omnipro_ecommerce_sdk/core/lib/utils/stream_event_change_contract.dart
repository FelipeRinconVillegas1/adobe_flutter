import 'package:equatable/equatable.dart';

/// Contract for Stream Event Change Data (Stream of events when data changes)
abstract class StreamEventChangeContract<T> {
  Stream<T> getStreamEventChangeData();
}

class EventDataChange<T, K> extends Equatable {
  EventDataChange({
    required this.data,
    required this.eventType,
  });

  final T? data;
  final K eventType;

  @override
  List<Object?> get props => [data, eventType];
}
