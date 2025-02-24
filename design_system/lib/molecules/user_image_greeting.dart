import 'package:auto_size_text/auto_size_text.dart';
import 'package:core/utils/extensions/string_extension.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/molecules/Redirect_Whatsapp.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Show user image with name and one greeting
class UserImageGreeting extends StatelessWidget {
  const UserImageGreeting({super.key, required this.param, this.style});

  final UserImageGreetingParam param;
  final UserImageGreetingStyle? style;

  UserImageGreetingStyle get _style => style ?? UserImageGreetingStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => param.onTapImage?.call(),
            child: _style.imageUser,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: AutoSizeText(
                      param.nameUser.capitalize(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: _style.nameUserStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: RedirectWhatsapp(
                      onTap: param.onTapRedirectWhatsapp,
                      text: param.redirectWhatsappText ?? '',
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (param.onEdit != null) const SizedBox(width: 8),
          Visibility(
            visible: param.onEdit != null,
            child: InkWell(
              onTap: () => param.onEdit?.call(),
              child: _style.iconEdit,
            ),
          ),
        ],
      ),
    );
  }
}

class UserImageGreetingParam {
  final String nameUser;
  final String? redirectWhatsappText;
  final Function? onEdit;
  final Function? onTapImage;
  final Function? onTapRedirectWhatsapp;

  const UserImageGreetingParam({
    this.onEdit,
    this.onTapImage,
    required this.nameUser,
    this.redirectWhatsappText,
    this.onTapRedirectWhatsapp,
  });

  UserImageGreetingParam copyWith({
    String? nameUser,
    String? redirectWhatsappText,
    Function? onTapRedirectWhatsapp,
    Function? onEdit,
    Function? onTapImage,
  }) {
    return UserImageGreetingParam(
      onEdit: onEdit ?? this.onEdit,
      onTapImage: onTapImage ?? this.onTapImage,
      nameUser: nameUser ?? this.nameUser,
      redirectWhatsappText: redirectWhatsappText ?? this.redirectWhatsappText,
      onTapRedirectWhatsapp: onTapRedirectWhatsapp ?? this.onTapRedirectWhatsapp,
    );
  }
}

class UserImageGreetingStyle {
  final TextStyle nameUserStyle;
  final TextStyle greetingStyle;
  final Color backgroundColor;

  final Widget imageUser;
  final Widget iconEdit;

  const UserImageGreetingStyle({
    required this.imageUser,
    required this.iconEdit,
    required this.nameUserStyle,
    required this.greetingStyle,
    required this.backgroundColor,
  });

  factory UserImageGreetingStyle.defaultStyle() {
    return UserImageGreetingStyle(
      iconEdit: const PrimarySvgIconAsset(
        data: PrimarySvgIconData(
          icon: OmniIcons.editButton,
          width: 30,
          height: 30,
        ),
      ),
      imageUser: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsOmni.greyF5F5F5,
        ),
        child: PrimarySvgIconAsset(
          data: PrimarySvgIconData(
            icon: OmniIcons.personDefault,
            width: 50.w,
            height: 50.w,
          ),
        ),
      ),
      nameUserStyle: OmniTypographyFoundation.bold18SecondaryBlack161615,
      greetingStyle: OmniTypographyFoundation.medium18Black161615,
      backgroundColor: ColorsOmni.white,
    );
  }

  UserImageGreetingStyle copyWith({
    TextStyle? nameUserStyle,
    TextStyle? greetingStyle,
    Color? backgroundColor,
    Widget? imageUser,
    Widget? iconEdit,
  }) {
    return UserImageGreetingStyle(
      imageUser: imageUser ?? this.imageUser,
      iconEdit: iconEdit ?? this.iconEdit,
      nameUserStyle: nameUserStyle ?? this.nameUserStyle,
      greetingStyle: greetingStyle ?? this.greetingStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
