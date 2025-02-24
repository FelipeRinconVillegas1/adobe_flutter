import 'package:rxdart/rxdart.dart';

enum TokenMediatorEvent {
  /// The token has expired. The app should logout the user.
  expireToken,
}

/// This class is used to notify the token expired event to the app.
class TokenMediator {
  /// Singleton instance.
  static final TokenMediator _instance = TokenMediator._();

  factory TokenMediator() => _instance;

  TokenMediator._();

  /// Stream controller for the token expired event.
  final _eventToken = BehaviorSubject<TokenMediatorEvent>();

  Stream<TokenMediatorEvent> get eventToken => _eventToken.stream;

  /// Notify the token expired event to the app.
  void notifyExpireToken() {
    _eventToken.add(TokenMediatorEvent.expireToken);
  }

  void dispose() {
    _eventToken.close();
  }
}
