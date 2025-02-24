/// MarketingEvent is a model class that represents a marketing event.
class MarketingEvent {
  /// The name of the event.
  final String event;

  /// The properties of the event.
  final Map<String, dynamic>? properties;

  /// The platforms on which the event should be tracked.
  final List<MarketingEventPlatform> platforms;

  MarketingEvent(this.event, this.properties, this.platforms);
}

enum MarketingEventPlatform {
  platform1,
  platform2,
}
