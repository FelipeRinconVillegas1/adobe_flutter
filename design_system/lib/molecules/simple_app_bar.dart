import 'package:design_system/atoms/icons/leading_back_app_bar.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final SimpleAppBarParam param;

  const SimpleAppBar({
    super.key,
    required this.param,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBar(
            centerTitle: false,
            actions: param.actions,
            iconTheme: IconThemeData(
              color: param.colorBackButton ?? ColorsOmni.secondaryBlack,
              size: 28,
            ),
            forceMaterialTransparency: true,
            automaticallyImplyLeading: param.automaticallyImplyLeading,
            leading: LeadingIconBackAppBar(param: LeadingIconBackAppBarParam(onPressed: param.onClickLeading)),
            elevation: param.elevation,
            leadingWidth: param.leadingWidth,
            backgroundColor: param.backgroundColor,
            title: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Text(
                              param.title,
                              style: param.textStyle ??
                                  OmniTypographyFoundation.bold22SecondaryBlack000000.copyWith(height: 1),
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(width: 2),
                          if (param.iconRightTitle != null) param.iconRightTitle!,
                        ],
                      ),
                      param.customTitle,
                    ],
                  ),
                ),
                if (param.endIcon != null) param.endIcon!,
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(param.height);
}

class BaseAppBarParam {
  final double height;
  final double elevation;
  final Color backgroundColor;
  final Color surfaceTintColor;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;

  const BaseAppBarParam({
    this.height = 42,
    this.elevation = .2,
    this.backgroundColor = ColorsOmni.white,
    this.surfaceTintColor = ColorsOmni.white,
    this.automaticallyImplyLeading = true,
    this.actions,
  });
}

class SimpleAppBarParam extends BaseAppBarParam {
  final String title;
  final Widget customTitle;
  final TextStyle? textStyle;
  final Widget? leading;
  final Color? colorBackButton;
  final double? leadingWidth;
  final void Function()? onClickLeading;
  final Widget? endIcon;
  final Widget? iconRightTitle;

  SimpleAppBarParam({
    required this.title,
    this.textStyle,
    this.colorBackButton,
    this.onClickLeading,
    this.leadingWidth = 35,
    this.customTitle = const SizedBox(),
    this.leading,
    super.actions,
    super.automaticallyImplyLeading = true,
    super.height = 70,
    super.elevation,
    super.backgroundColor,
    this.endIcon,
    this.iconRightTitle,
  });
}
