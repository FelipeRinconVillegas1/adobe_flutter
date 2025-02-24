import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';

import '../../foundations/colors.dart';
import '../../foundations/typo.dart';

class SearchSimpleCard extends StatelessWidget {
  const SearchSimpleCard({
    super.key,
    required this.data,
  });

  final SearchSimpleCardData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: data.onTap,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (data.prefixIcon != null) data.prefixIcon!,
                const SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: data.termSearch != null
                            ? SubstringHighlight(
                                text: data.title, // search result string from database or something
                                term: data.termSearch!,
                                textStyle: data.titleStyle!,
                                textStyleHighlight: data.titleStyle2!,
                              )
                            : Text(
                                data.title,
                                style: data.titleStyle,
                              ),
                      ),
                      Flexible(
                        child: Text(
                          data.subtitle,
                          style: data.subtitleStyle,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: data.borderBottomColor,
          height: 1,
          indent: 12,
          endIndent: 12,
          thickness: 0.8,
        )
      ],
    );
  }
}

class PlacesCard extends StatelessWidget {
  const PlacesCard({
    super.key,
    required this.data,
  });

  final SearchSimpleCardData data;

  @override
  Widget build(BuildContext context) {
    final finalData = data.places();
    return SearchSimpleCard(data: finalData);
  }
}

class SearchSimpleCardData {
  SearchSimpleCardData({
    required this.title,
    required this.subtitle,
    this.termSearch,
    this.titleStyle2,
    this.prefixIcon,
    this.onTap,
    this.titleStyle,
    this.subtitleStyle,
    this.borderBottomColor,
    this.borderTopColor,
  });

  final String title;
  final String subtitle;
  final String? termSearch;
  final TextStyle? titleStyle2;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final Color? borderBottomColor;
  final Color? borderTopColor;

  SearchSimpleCardData copyWith({
    String? title,
    TextStyle? titleStyle,
    String? termSearch,
    TextStyle? titleStyle2,
    String? subtitle,
    Widget? prefixIcon,
    VoidCallback? onTap,
    TextStyle? subtitleStyle,
    Color? borderBottomColor,
    Color? borderTopColor,
  }) {
    return SearchSimpleCardData(
      termSearch: termSearch ?? this.termSearch,
      titleStyle2: titleStyle2 ?? this.titleStyle2,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      onTap: onTap ?? this.onTap,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      borderBottomColor: borderBottomColor ?? this.borderBottomColor,
      borderTopColor: borderTopColor ?? this.borderTopColor,
    );
  }

  SearchSimpleCardData places() {
    return SearchSimpleCardData(
      title: title,
      subtitle: subtitle,
      prefixIcon: prefixIcon ?? const Icon(Icons.place_outlined),
      onTap: onTap,
      titleStyle: titleStyle ?? OmniTypographyFoundation.medium14SecondaryBlack000000,
      termSearch: termSearch,
      titleStyle2: titleStyle2 ?? OmniTypographyFoundation.bold14SecondaryBlack000000,
      subtitleStyle: subtitleStyle ?? OmniTypographyFoundation.regular12SecondaryBlack000000,
      borderBottomColor: borderBottomColor ?? ColorsOmni.black70,
      borderTopColor: borderTopColor ?? CupertinoColors.lightBackgroundGray,
    );
  }
}
