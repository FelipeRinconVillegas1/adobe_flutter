import 'package:core/domain/entity/localization_message.dart';

/// Info used for share product with native methods  use case
class ComplementSharedProduct {
  final String url;
  final LocalizationMessage message;

  ComplementSharedProduct(this.url, this.message);
}
