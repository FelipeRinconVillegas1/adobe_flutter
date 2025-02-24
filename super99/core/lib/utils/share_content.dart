import 'dart:ui';
import 'package:share_plus/share_plus.dart';

class ShareContent {
  /// Summons the platform's share sheet to share text.
  ///
  /// Wraps the platform's native share dialog. Can share a text and/or a URL.
  /// It uses the `ACTION_SEND` Intent on Android and `UIActivityViewController`
  /// on iOS.
  ///
  /// The optional [subject] parameter can be used to populate a subject if the
  /// user chooses to send an email.
  ///
  /// The optional [sharePositionOrigin] parameter can be used to specify a global
  /// origin rect for the share sheet to popover from on iPads and Macs. It has no effect
  /// on other devices.
  Future<void> share(
    String text, {
    String? subject,
    Rect? sharePositionOrigin,
  }) {
    return Share.share(text, subject: subject, sharePositionOrigin: sharePositionOrigin);
  }
}
