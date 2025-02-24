import 'dart:async';

import 'package:core/data/repository/marketing_event_repository.dart';
import 'package:core/domain/entity/marketing_event.dart';

/// A use case for tracking marketing events.
class TrackEventUseCase {
  final MarketingEventRepository _marketingEventRepository;

  TrackEventUseCase(this._marketingEventRepository);

  /// Tracks a marketing event.
  Future<void> call(String name, List<MarketingEventPlatform> platforms, {Map<String, dynamic>? properties}) async {
    unawaited(_marketingEventRepository.trackEvent(MarketingEvent(name, properties, platforms)));
  }
}
