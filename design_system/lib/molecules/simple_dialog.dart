import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

/// [SimpleDialogOmni] is a simple dialog with title, icon, and body
class SimpleDialogOmni extends StatelessWidget {
  const SimpleDialogOmni({
    Key? key,
    this.title,
    this.description,
    this.icon,
    this.body,
    this.style,
  })  : assert(title == null && icon != null || title != null && icon == null,
            'Either both title and icon or both body and description cannot be null at the same time'),
        super(key: key);

  /// [title] is a widget that will be placed on the left side of [icon] is a child of [Stack]
  final String? title;

  /// [description] is a widget that will be placed below [title] is a child of [Stack]
  final String? description;

  /// [icon] is a widget that will be placed on the right side of [title] is a child of [Stack]
  final Widget? icon;

  /// [body] is a widget that will be placed below [description] is a child of [Stack]
  final Widget? body;
  final SimpleDialogOmniStyle? style;

  SimpleDialogOmniStyle get _style => style ?? SimpleDialogOmniStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: _style.offsetDialog,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntrinsicWidth(
                child: Container(
                  padding: _style.paddingDialog,
                  decoration: BoxDecoration(
                    color: _style.backgroundColorBody,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Column(
                    children: [
                      Stack(children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: _style.backgroundColorTitle,
                            borderRadius:
                                const BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                          ),
                          child: Padding(
                            padding: _style.paddingTitle,
                            child: Text(
                              title ?? '',
                              textAlign: TextAlign.center,
                              style: _style.titleTextStyle,
                            ),
                          ),
                        ),
                        Visibility(
                          visible: icon != null,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: _style.paddingIcon,
                              child: icon ?? Container(),
                            ),
                          ),
                        ),
                      ]),
                      Padding(
                          padding: _style.paddingBody,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Flexible(
                                  child: Text(
                                    description ?? '',
                                    textAlign: TextAlign.left,
                                    style: _style.descriptionTextStyle,
                                  ),
                                ),
                              ),
                              body ?? Container(),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///Write SimpleDialogOmniStyle
class SimpleDialogOmniStyle {
  final Color backgroundColorTitle;
  final Color backgroundColorBody;
  final TextStyle titleTextStyle;
  final TextStyle descriptionTextStyle;
  final EdgeInsets paddingTitle;
  final EdgeInsets paddingBody;
  final EdgeInsets paddingIcon;
  final EdgeInsets paddingDialog;
  /// [offsetDialog] is the offset of the dialog from the center of the screen
  /// default value is [const EdgeInsets.ZERO]
  final EdgeInsets offsetDialog;

  const SimpleDialogOmniStyle({
    required this.paddingDialog,
    required this.descriptionTextStyle,
    required this.backgroundColorTitle,
    required this.backgroundColorBody,
    required this.titleTextStyle,
    required this.paddingTitle,
    required this.paddingBody,
    required this.paddingIcon,
    required this.offsetDialog,
  });

  factory SimpleDialogOmniStyle.defaultStyle() {
    return SimpleDialogOmniStyle(
      offsetDialog: const EdgeInsets.all(0),
      paddingDialog: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      backgroundColorTitle: ColorsOmni.white,
      backgroundColorBody: ColorsOmni.white,
      descriptionTextStyle: OmniTypographyFoundation.medium17Grey707070,
      titleTextStyle: OmniTypographyFoundation.bold18SecondaryBlack000000,
      paddingTitle: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      paddingBody: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      paddingIcon: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
    );
  }


  ///Copy with
  SimpleDialogOmniStyle copyWith({
    Color? backgroundColorTitle,
    Color? backgroundColorBody,
    TextStyle? titleTextStyle,
    TextStyle? descriptionTextStyle,
    EdgeInsets? paddingTitle,
    EdgeInsets? paddingBody,
    EdgeInsets? paddingIcon,
    EdgeInsets? paddingDialog,
    EdgeInsets? offsetDialog,
  }) {
    return SimpleDialogOmniStyle(
      backgroundColorTitle: backgroundColorTitle ?? this.backgroundColorTitle,
      backgroundColorBody: backgroundColorBody ?? this.backgroundColorBody,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      paddingTitle: paddingTitle ?? this.paddingTitle,
      paddingBody: paddingBody ?? this.paddingBody,
      paddingIcon: paddingIcon ?? this.paddingIcon,
      paddingDialog: paddingDialog ?? this.paddingDialog,
      offsetDialog: offsetDialog ?? this.offsetDialog,
    );
  }
}
