import 'package:url_launcher/url_launcher.dart' as lc;

/// Wrapper launch url
class LaunchUrl {
  const LaunchUrl();

  /// Returns true if the URL was launched successful, otherwise either returns
  /// false or throws a [PlatformException] depending on the failure.
  Future<bool> launchUrl(
    Uri url, {
    lc.LaunchMode mode = lc.LaunchMode.platformDefault,
    lc.WebViewConfiguration webViewConfiguration = const lc.WebViewConfiguration(),
    String? webOnlyWindowName,
  }) async {
    return await lc.launchUrl(url,
        mode: mode, webViewConfiguration: webViewConfiguration, webOnlyWindowName: webOnlyWindowName);
  }

  lc.LaunchMode get platformDefault => lc.LaunchMode.platformDefault;
  lc.LaunchMode get inAppWebView => lc.LaunchMode.inAppWebView;
  lc.LaunchMode get externalApplication => lc.LaunchMode.externalApplication;
  lc.LaunchMode get externalNonBrowserApplication => lc.LaunchMode.externalNonBrowserApplication;

  /// Checks whether the specified URL can be handled by some app installed on the
  /// device.
  Future<bool> canLaunchUrl(Uri url) async {
    return await lc.canLaunchUrl(url);
  }

  /// Closes the current in-app web view, if one was previously opened by
  /// [launchUrl].
  ///
  /// If [launchUrl] was never called with [LaunchMode.inAppWebView], then this
  /// call will have no effect.
  Future<void> closeInAppWebView() async {
    return await lc.closeInAppWebView();
  }
}
