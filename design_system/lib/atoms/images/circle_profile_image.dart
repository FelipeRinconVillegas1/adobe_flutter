import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets_omni.dart';
import '../data_models/primary_svg_icon_data.dart';

/// Paint image with circle border and icon camera on bottom right
class CircleProfileImage extends StatelessWidget {
  const CircleProfileImage(
    this.param, {
    this.style,
    Key? key,
  }) : super(key: key);

  final CircleProfileImageStyle? style;
  final CircleProfileImageParam param;

  CircleProfileImageStyle get _style => style ?? CircleProfileImageStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.fromSize(
          size: _style.sizeImage,
          child: CircleAvatar(
            backgroundColor: ColorsOmni.grayF5F5F5,
            backgroundImage: param.imageData != null ? MemoryImage(param.imageData!) : null,
            radius: 50,
            child: param.imageData != null
                ? null
                : PrimarySvgIconAsset(
                    data: PrimarySvgIconData(icon: param.placeholder, height: 30.w, width: 30.w),
                  ),
            // You can adjust the radius as needed.
          ),
        ),
        if (_style.customWidget != null) _style.customWidget!,
        if (param.showActionCamera)
          Positioned(
            right: _style.positionRightIcon,
            bottom: _style.positionBottomIcon,
            child: InkWell(
              onTap: () => param.onTapCamera?.call(),
              child: _style.iconCamera,
            ),
          ),
      ],
    );
  }
}

class CircleProfileImageParam {
  /// Image data to show image
  final Uint8List? imageData;
  final OmniIcons placeholder;
  final double? widthImage;
  final double? heightImage;
  final BoxFit? fit;

  /// If true, show icon camera on bottom right of image
  final bool showActionCamera;

  /// If showActionCamera is true, this function will be called when user tap on icon camera
  final Function()? onTapCamera;

  const CircleProfileImageParam({
    this.placeholder = OmniIcons.userOutline,
    this.imageData,
    this.widthImage,
    this.heightImage,
    this.fit,
    this.showActionCamera = false,
    this.onTapCamera,
  });
}

class CircleProfileImageStyle {
  ///Default radius is 44
  ///If you want to change the radius, you can change it here
  final Size sizeImage;

  /// Default position is 0
  final double positionRightIcon;

  /// Default position is 8
  final double positionBottomIcon;

  /// Widget to show when showActionCamera is true and onTapCamera is not null
  final Widget iconCamera;

  /// Custom widget to show in the body  of Widget
  /// This widget is child of Stack
  final Widget? customWidget;

  CircleProfileImageStyle({
    required this.sizeImage,
    required this.positionRightIcon,
    required this.positionBottomIcon,
    required this.iconCamera,
    this.customWidget,
  });

  CircleProfileImageStyle.defaultStyle()
      : sizeImage = Size(95.w, 95.w),
        positionRightIcon = 0,
        positionBottomIcon = 95.w / 10,
        iconCamera = Container(
          padding: EdgeInsets.all(3.w),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            Icons.camera_alt_rounded,
            size: 14.w,
            color: ColorsOmni.lightNavyBluePressed,
          ),
        ),
        customWidget = null;

  CircleProfileImageStyle copyWith({
    Size? sizeImage,
    double? positionRightIcon,
    double? positionBottomIcon,
    Widget? iconCamera,
    Widget? customWidget,
  }) {
    return CircleProfileImageStyle(
      customWidget: customWidget ?? this.customWidget,
      iconCamera: iconCamera ?? this.iconCamera,
      sizeImage: sizeImage ?? this.sizeImage,
      positionRightIcon: positionRightIcon ?? this.positionRightIcon,
      positionBottomIcon: positionBottomIcon ?? this.positionBottomIcon,
    );
  }
}
