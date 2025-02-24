import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SinglePanelExpanded extends StatefulWidget {
  const SinglePanelExpanded(
      {super.key,
      this.leading,
      required this.titleExpanded,
      required this.titleCollapsed,
      required this.style,
      this.children = const [],
      this.initiallyExpanded = true});
  final String titleExpanded;
  final String titleCollapsed;
  final Widget? leading;
  final SinglePanelExpandedStyle style;
  final bool initiallyExpanded;
  final List<Widget> children;

  @override
  State<SinglePanelExpanded> createState() => _SinglePanelExpandedState();
}

class _SinglePanelExpandedState extends State<SinglePanelExpanded> {
  late bool _isExpanded;

  @override
  void initState() {
    _isExpanded = widget.initiallyExpanded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            dividerColor: Colors.transparent),
        child: ListTileTheme(
          contentPadding: widget.style.paddingPanel ?? const EdgeInsets.all(0),
          dense: true,
          horizontalTitleGap: 0.0,
          minLeadingWidth: 0,
          child: ExpansionTile(
            title: Text(
              _isExpanded ? widget.titleExpanded : widget.titleCollapsed,
              style: widget.style.styleTitle,
            ),
            leading: widget.leading,
            onExpansionChanged: (value) {
              setState(() {
                _isExpanded = value;
              });
            },
            collapsedIconColor: widget.style.collapsedIconColor ?? ColorsOmni.primaryRed,
            iconColor: widget.style.iconColor ?? ColorsOmni.primaryRed,
            collapsedTextColor: widget.style.collapsedTextColor ?? ColorsOmni.primaryRed,
            initiallyExpanded: widget.initiallyExpanded,
            backgroundColor: widget.style.backgroundColor,
            collapsedBackgroundColor: widget.style.collapsedBackgroundColor,
            shape: widget.style.shapeBorder,
            collapsedShape: widget.style.shapeBorder,
            children: widget.children,
          ),
        ));
  }
}

class SinglePanelExpandedStyle {
  final TextStyle styleTitle;
  final EdgeInsetsGeometry? paddingPanel;
  final Color? collapsedIconColor;
  final Color? iconColor;
  final Color? collapsedTextColor;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final ShapeBorder? shapeBorder;

  const SinglePanelExpandedStyle(
      {required this.styleTitle,
      this.paddingPanel,
      this.collapsedIconColor,
      this.backgroundColor,
      this.collapsedBackgroundColor,
      this.shapeBorder,
      this.iconColor,
      this.collapsedTextColor});

  SinglePanelExpandedStyle copyWith({
    TextStyle? styleTitle,
    EdgeInsetsGeometry? paddingPanel,
    Color? collapsedIconColor,
    Color? iconColor,
    Color? collapsedTextColor,
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    ShapeBorder? shapeBorder,
  }) {
    return SinglePanelExpandedStyle(
      shapeBorder: shapeBorder ?? this.shapeBorder,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      collapsedBackgroundColor: collapsedBackgroundColor ?? this.collapsedBackgroundColor,
      styleTitle: styleTitle ?? this.styleTitle,
      paddingPanel: paddingPanel ?? this.paddingPanel,
      collapsedIconColor: collapsedIconColor ?? this.collapsedIconColor,
      iconColor: iconColor ?? this.iconColor,
      collapsedTextColor: collapsedTextColor ?? this.collapsedTextColor,
    );
  }

  SinglePanelExpandedStyle.defaultStyle()
      : this(
          styleTitle: OmniTypographyFoundation.medium14PrimaryRedFF001D,
          paddingPanel: const EdgeInsets.all(0),
          collapsedIconColor: ColorsOmni.primaryRed,
          iconColor: ColorsOmni.primaryRed,
          collapsedTextColor: ColorsOmni.primaryRed,
        );

  SinglePanelExpandedStyle.productDetailStyle()
      : this(
          styleTitle: OmniTypographyFoundation.semiBold14Black161615,
          paddingPanel: const EdgeInsets.all(0),
          collapsedTextColor: ColorsOmni.black161615,
        );

  SinglePanelExpandedStyle.historyOrdersStyle()
      : this(
            styleTitle: OmniTypographyFoundation.semiBold14Black161615,
            paddingPanel: const EdgeInsets.only(left: 20, right: 10),
            collapsedIconColor: ColorsOmni.redFF001D,
            iconColor: ColorsOmni.redFF001D,
            collapsedTextColor: ColorsOmni.black161615,
            backgroundColor: ColorsOmni.greyF5F5F5,
            collapsedBackgroundColor: ColorsOmni.greyF5F5F5,
            shapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ));
}
