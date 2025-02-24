import 'package:flutter/material.dart';
import '../foundations/sizes.dart';

class OmniSepareted extends StatelessWidget {
  final double nSepareted;
  const OmniSepareted({Key? key, required this.nSepareted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nSepareted*OmniSizesFoundation.baseSepareted,
    );
  }
}
