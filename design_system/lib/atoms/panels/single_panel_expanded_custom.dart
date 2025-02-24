import 'package:flutter/material.dart';

import 'expansion_tile_custom.dart';

class SinglePanelExpandedCustom extends StatefulWidget {
  const SinglePanelExpandedCustom({
    super.key,
    required this.style,
    this.children = const [],
    this.initiallyExpanded = true,
    required this.title,
    this.onExpansionChanged,
    this.isSelectable = true,
  });
  final Widget title;
  final SinglePanelExpandedCustomStyle style;
  final bool initiallyExpanded;
  final List<Widget> children;
  final ValueChanged<bool>? onExpansionChanged;
  final bool isSelectable;

  @override
  State<SinglePanelExpandedCustom> createState() => _SinglePanelExpandedCustomState();
}

class _SinglePanelExpandedCustomState extends State<SinglePanelExpandedCustom> {

  @override
  void initState() {
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
          child: ExpansionTileCustom(
            title: IgnorePointer(
              ignoring: !widget.isSelectable,
              child: widget.title,
            ),
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: widget.onExpansionChanged,
            initiallyExpanded: widget.initiallyExpanded,
            backgroundColor: widget.style.backgroundColor,
            collapsedBackgroundColor: widget.style.collapsedBackgroundColor,
            shape: widget.style.shapeBorder,
            collapsedShape: widget.style.shapeBorder,
            showTrailing: false,
            children: widget.children,
          ),
        ));
  }
}

class SinglePanelExpandedCustomStyle {
  final EdgeInsetsGeometry? paddingPanel;
  final Color? backgroundColor;
  final Color? collapsedBackgroundColor;
  final ShapeBorder? shapeBorder;

  const SinglePanelExpandedCustomStyle(
      {this.paddingPanel, this.backgroundColor, this.collapsedBackgroundColor, this.shapeBorder});

  SinglePanelExpandedCustomStyle copyWith({
    EdgeInsetsGeometry? paddingPanel,
    Color? backgroundColor,
    Color? collapsedBackgroundColor,
    ShapeBorder? shapeBorder,
  }) {
    return SinglePanelExpandedCustomStyle(
      shapeBorder: shapeBorder ?? this.shapeBorder,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      collapsedBackgroundColor: collapsedBackgroundColor ?? this.collapsedBackgroundColor,
      paddingPanel: paddingPanel ?? this.paddingPanel,
    );
  }

  SinglePanelExpandedCustomStyle.defaultStyle()
      : this(
          paddingPanel: const EdgeInsets.all(0),
        );
}
