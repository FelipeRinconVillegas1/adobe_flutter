import 'package:package_info_plus/package_info_plus.dart';

/// Wrapper get info app
class InfoAppUtil {
  Future<InfoApp> getInfoApp() async {
    final result = await PackageInfo.fromPlatform();

    return InfoApp(
      appName: result.appName,
      packageName: result.packageName,
      version: result.version,
      buildNumber: result.buildNumber,
    );
  }
}

class InfoApp {
  const InfoApp({
    required this.appName,
    required this.packageName,
    required this.version,
    required this.buildNumber,
  });

  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;

  String get versionApp => '$version($buildNumber)';
}
