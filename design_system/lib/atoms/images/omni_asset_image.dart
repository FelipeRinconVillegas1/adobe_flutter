import 'package:design_system/atoms/data_models/omni_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OmniAssetImage extends StatelessWidget {
  final OmniAssetImageData data;
  const OmniAssetImage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final omniImage = Image.asset(
      data.path,
      width: data.widthImage != null ? data.widthImage!.w : null,
      height: data.heightImage != null ? data.heightImage!.h : null,
      alignment: Alignment.topCenter,
      fit: data.fit,
    );
    return omniImage;
  }
}
