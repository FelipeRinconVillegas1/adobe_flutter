import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VisibilityDetectorWrapper extends StatelessWidget {
  final Widget child;
  final Key detectorKey;
  final Function(VisibilityInfo info)? onChange;

  static void defineInterval(Duration interval) {
    VisibilityDetectorController.instance.updateInterval = interval;
  }

  const VisibilityDetectorWrapper({
    super.key,
    required this.child,
    required this.detectorKey,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: detectorKey,
      onVisibilityChanged: (visibilityInfo) {
        onChange?.call(visibilityInfo);
      },
      child: child,
    );
  }
}
