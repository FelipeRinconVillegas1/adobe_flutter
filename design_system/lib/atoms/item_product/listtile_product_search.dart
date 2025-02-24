import 'package:cached_network_image/cached_network_image.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListTileProductSearch extends StatelessWidget {
  const ListTileProductSearch({super.key, required this.params, this.style});

  final ListTileProductSearchParams params;
  final ListTileProductSearchStyle? style;

  ListTileProductSearchStyle get _style => style ?? ListTileProductSearchStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: false,
        splashColor: ColorsOmni.transparent,
        contentPadding: _style.contentPadding,
        onTap: params.onTap,
        visualDensity: _style.visualDensity,
        leading: params.leadingWidget ??
            (params.urlImage != null
                ? Container(
                    width: _style.leadingSize.width,
                    height: _style.leadingSize.height,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: ColorsOmni.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 5),
                      ],
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: params.urlImage!,
                          height: _style.imageSize?.height,
                          width: _style.imageSize?.width,
                        ),
                      ),
                    ))
                : null),
        title: Text(
          params.name,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: _style.titleStyle,
          maxLines: 1,
        ),
        trailing: _style.showIcon
            ? const Icon(Icons.keyboard_arrow_right_outlined, color: ColorsOmni.primaryRed, size: 30)
            : null);
  }
}

/// leadingWidget if is not null, replace the urlImage
/// If showIcon is false, the trailing will not be shown
class ListTileProductSearchParams {
  final String name;
  final String? urlImage;
  final Function()? onTap;
  final Widget? leadingWidget;
  const ListTileProductSearchParams({
    required this.name,
    this.urlImage,
    this.onTap,
    this.leadingWidget,
  });
}

class ListTileProductSearchStyle {
  const ListTileProductSearchStyle(
      {required this.leadingSize,
      this.imageSize,
      this.showIcon = true,
      this.contentPadding,
      required this.titleStyle,
      this.visualDensity});
  final Size leadingSize;
  final Size? imageSize;
  final bool showIcon;
  final VisualDensity? visualDensity;
  final EdgeInsets? contentPadding;
  final TextStyle titleStyle;

  factory ListTileProductSearchStyle.defaultStyle() {
    return ListTileProductSearchStyle(
        leadingSize: Size(50.h, 50.h),
        imageSize: Size(50.h, 50.h),
        titleStyle: OmniTypographyFoundation.regular10Black292929,
        contentPadding: EdgeInsets.only(left: 20.w, right: 35.w, top: 10, bottom: 10),
        showIcon: true,
        visualDensity: const VisualDensity(vertical: 0));
  }

  factory ListTileProductSearchStyle.augmentedStyle() {
    return ListTileProductSearchStyle(
        contentPadding: EdgeInsets.only(left: 10.w, right: 35.w, top: 10, bottom: 10),
        visualDensity: const VisualDensity(vertical: 4),
        titleStyle: OmniTypographyFoundation.regular12Black292929,
        leadingSize: Size(80.h, 80.h),
        imageSize: Size(50.h, 50.h),
        showIcon: false);
  }

  factory ListTileProductSearchStyle.simpleStyle() {
    return ListTileProductSearchStyle(
        contentPadding: EdgeInsets.only(left: 20.w),
        visualDensity: const VisualDensity(vertical: 0),
        titleStyle: OmniTypographyFoundation.regular12Black292929,
        leadingSize: Size(80.h, 80.h),
        imageSize: Size(50.h, 50.h),
        showIcon: false);
  }

  ListTileProductSearchStyle copyWith({
    Size? leadingSize,
    Size? imageSize,
    bool? showIcon,
    TextStyle? titleStyle,
    VisualDensity? visualDensity,
    EdgeInsets? contentPadding,
  }) {
    return ListTileProductSearchStyle(
        contentPadding: contentPadding ?? this.contentPadding,
        visualDensity: visualDensity ?? this.visualDensity,
        leadingSize: leadingSize ?? this.leadingSize,
        imageSize: imageSize ?? this.imageSize,
        titleStyle: titleStyle ?? this.titleStyle,
        showIcon: showIcon ?? this.showIcon);
  }
}
