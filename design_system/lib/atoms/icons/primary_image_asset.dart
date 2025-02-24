import 'package:flutter/material.dart';

import '../data_models/primary_image_data.dart';

class PrimaryImageAsset extends StatelessWidget {
  const PrimaryImageAsset({
    super.key,
    required this.data,
  });

  final PrimaryImageData data;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      data.image.path,
      width: data.width,
      fit: data.fit,
      height: data.height,
      color: data.color,
    );
  }
}
