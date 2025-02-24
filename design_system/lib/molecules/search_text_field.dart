import 'package:design_system/foundations/export.dart';

import 'package:design_system/tokens/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextFieldParams {
  final TextEditingController? controller;
  final Function(String value)? onSubmitted;
  final Function(String text)? onChange;
  final Function()? onSuffixTap;
  final Function()? onTap;
  final FocusNode focusNode;
  final String? hintText;
  final Function()? onClear;
  final bool readOnly;

  const SearchTextFieldParams({
    required this.focusNode,
    this.controller,
    this.onSubmitted,
    this.onSuffixTap,
    this.onTap,
    this.hintText,
    this.onChange,
    this.onClear,
    this.readOnly = false,
  });
}

class SearchTextFieldStyle {
  const SearchTextFieldStyle(
      {this.height,
      this.suffixIcon,
      this.borderSide,
      this.suffixPadding,
      this.style,
      this.showIconClear = true,
      this.showPrefixIcon = true,
      this.prefixIcon,
      this.fillColor,
      this.hintTextStyle,
      this.paddingWithoutPrefixIcon = const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      this.paddingWithPrefixIcon = const EdgeInsets.only(left: 14, top: 6, bottom: 6, right: 14)});

  SearchTextFieldStyle copyWith({
    double? height,
    Widget? suffixIcon,
    EdgeInsets? suffixPadding,
    bool? showIconClear,
    bool? showPrefixIcon,
    EdgeInsets? paddingWithoutPrefixIcon,
    EdgeInsets? paddingWithPrefixIcon,
    TextStyle? style,
    TextStyle? hintTextStyle,
    Color? fillColor,
    BorderSide? borderSide,
    Widget? prefixIcon,
  }) {
    return SearchTextFieldStyle(
        prefixIcon: prefixIcon ?? this.prefixIcon,
        borderSide: borderSide ?? this.borderSide,
        fillColor: fillColor ?? this.fillColor,
        hintTextStyle: hintTextStyle ?? this.hintTextStyle,
        style: style ?? this.style,
        height: height ?? this.height,
        suffixIcon: suffixIcon ?? this.suffixIcon,
        suffixPadding: suffixPadding ?? this.suffixPadding,
        showIconClear: showIconClear ?? this.showIconClear,
        showPrefixIcon: showPrefixIcon ?? this.showPrefixIcon,
        paddingWithoutPrefixIcon: paddingWithoutPrefixIcon ?? this.paddingWithoutPrefixIcon,
        paddingWithPrefixIcon: paddingWithPrefixIcon ?? this.paddingWithPrefixIcon);
  }

  SearchTextFieldStyle.defaultStyle()
      : this(
            showIconClear: true,
            showPrefixIcon: true,
            fillColor: ColorsOmni.grayF5F5F5,
            hintTextStyle: OmniTypographyFoundation.regular12SecondaryBlack000000,
            style: OmniTypographyFoundation.regular14SecondaryBlack000000,
            paddingWithoutPrefixIcon: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            paddingWithPrefixIcon: const EdgeInsets.only(left: 14, top: 6, bottom: 6, right: 14));

  SearchTextFieldStyle.countryCodeStyle()
      : this(
            showIconClear: true,
            showPrefixIcon: true,
            height: 40,
            fillColor: ColorsOmni.white,
            borderSide: BorderSide(color: ColorsOmni.grey707070, width: 0.3.r),
            hintTextStyle: OmniTypographyFoundation.light12GreyB7B7B7,
            style: OmniTypographyFoundation.regular14SecondaryBlack000000,
            paddingWithoutPrefixIcon: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            paddingWithPrefixIcon: const EdgeInsets.only(left: 14, top: 6, bottom: 6, right: 14));

  final double? height;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsets? suffixPadding;
  final bool showIconClear;
  final bool showPrefixIcon;
  final EdgeInsets paddingWithPrefixIcon;
  final EdgeInsets paddingWithoutPrefixIcon;
  final TextStyle? style;
  final TextStyle? hintTextStyle;
  final Color? fillColor;
  final BorderSide? borderSide;
}

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key, required this.params, this.style});

  final SearchTextFieldParams params;
  final SearchTextFieldStyle? style;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool isTextEmpty = true;

  SearchTextFieldStyle get _style => widget.style ?? SearchTextFieldStyle.defaultStyle();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isTextEmpty = widget.params.controller?.text.isEmpty ?? true;
    return SizedBox(
      height: _style.height?.h ?? OmniSizes.sizeXS.h,
      child: Center(
        child: TextField(
          onTap: () {
            if (widget.params.onTap != null) {
              widget.params.onTap!();
            }
          },
          readOnly: widget.params.readOnly,
          cursorColor: Colors.grey,
          style: _style.style,
          controller: widget.params.controller,
          focusNode: widget.params.focusNode,
          textAlign: TextAlign.left,
          textAlignVertical: TextAlignVertical.center,
          onSubmitted: (value) {
            widget.params.focusNode.unfocus();
            if (widget.params.onSubmitted != null) {
              widget.params.onSubmitted!(value);
            }
          },
          onChanged: (value) {
            setState(() {
              isTextEmpty = value.isEmpty;
            });
            if (widget.params.onChange != null) {
              widget.params.onChange!(value);
            }
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: _style.borderSide ?? const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15.r),
            ),
            isDense: true,
            contentPadding: _style.paddingWithPrefixIcon,
            prefixIcon: _style.showPrefixIcon
                ? _style.prefixIcon ??
                    SizedBox(
                      child: Icon(
                        size: 22.h,
                        Icons.search,
                        color: ColorsOmni.secondaryBlack,
                      ),
                    )
                : null,
            hintText: widget.params.hintText,
            hintStyle: _style.hintTextStyle,
            enabledBorder: OutlineInputBorder(
              borderSide: _style.borderSide ?? const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(15.r),
            ),
            filled: true,
            fillColor: _style.fillColor,
            suffixIcon: Container(
              padding: isTextEmpty ? EdgeInsets.only(right: 20.w) : null,
              width: 0,
              child: Visibility(
                  visible: isTextEmpty,
                  replacement: _style.showIconClear
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(top: 0),
                              color: Colors.grey[400],
                              icon: const Icon(Icons.cancel, size: 25),
                              onPressed: () {
                                widget.params.controller?.clear();
                                if (widget.params.onClear != null) {
                                  widget.params.onClear!();
                                }
                                setState(() {
                                  isTextEmpty = true;
                                });
                              },
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  child: _style.suffixIcon ?? const SizedBox.shrink()),
            ),
          ),
        ),
      ),
    );
  }
}
