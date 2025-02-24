import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_textfield_base_data.dart';
import 'package:design_system/atoms/icons/flag_country_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets_omni.dart';
import 'flag_country_data.dart';

class PrimaryTextfieldData {
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final TextStyle? textStyle;
  final TextStyle? errorTextStyle;
  final Color? focusColor;
  final Color? unfocusColor;
  final Color? disableColor;
  final Color? errorColor;
  final Color? fillColor;
  final double? radius;
  final String? errorText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final double? width;
  final double? height;
  final double? borderStroke;
  final Border? border;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? errorPadding;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? textInputType;
  final bool obscureText;
  final bool enable;
  final String? label;
  final bool showLabel;
  final TextStyle? styleLabel;
  final Widget? prefixIcon;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final int flexSuffixIcon;
  final int flexPrefixIcon;
  final EdgeInsets? suffixIconPadding;
  final bool expands;
  final int? maxLines;
  final int? minLines;
  final TextStyle? hintTextStyle;
  final TextAlign? textAlign;
  final bool? showCursor;
  final TextInputAction? textInputAction;
  final bool? autofocus;
  final InputBorder? inputBorder;
  final InputBorder? focusedInputBorder;
  final InputBorder? enabledInputBorder;
  final List<BoxShadow>? boxShadow;
  final Function(String)? onSubmitted;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final String? labelRequired;
  final TextStyle? labelRequiredTextStyle;
  final Widget? labelIcon;
  final Widget? iconLeadingError;
  final Widget? labelIconInfo;
  final VoidCallback? onTapLabelIconInfo;
  final bool isRequired;
  final TextStyle? textStyleWhenIsRequired;
  final bool enableSuggestedText;
  final List<String> suggestedTexts;

  PrimaryTextfieldData(
      {this.textEditingController,
      this.labelRequired,
      this.iconLeadingError,
      this.onTapLabelIconInfo,
      this.textStyleWhenIsRequired,
      this.labelIconInfo,
      this.labelIcon,
      this.labelRequiredTextStyle,
      this.textAlign,
      this.onSubmitted,
      this.maxLengthEnforcement,
      this.boxShadow,
      this.inputBorder,
      this.focusedInputBorder,
      this.enabledInputBorder,
      this.autofocus,
      this.textInputAction,
      this.showCursor,
      this.focusNode,
      this.hintTextStyle,
      this.textStyle,
      this.errorTextStyle,
      this.focusColor,
      this.unfocusColor,
      this.disableColor,
      this.errorColor,
      this.fillColor,
      this.radius,
      this.errorText,
      this.onChanged,
      this.width,
      this.height,
      this.borderStroke,
      this.border,
      this.suffixIcon,
      this.padding,
      this.errorPadding,
      this.contentPadding,
      this.textInputType,
      this.obscureText = false,
      this.isRequired = false,
      this.enable = true,
      this.styleLabel,
      this.label,
      this.showLabel = true,
      this.prefixIcon,
      this.inputFormatters,
      this.maxLength,
      this.hintText,
      this.flexSuffixIcon = 1,
      this.flexPrefixIcon = 4,
      this.enableSuggestedText = false,
      this.suggestedTexts = const [],
      this.suffixIconPadding,
      this.expands = false,
      this.maxLines = 1,
      this.minLines,
      this.onTap});

  PrimaryTextfieldData copyWith({
    String? label,
    bool? showLabel,
    Widget? labelIcon,
    TextStyle? labelRequiredTextStyle,
    String? labelRequired,
    MaxLengthEnforcement? maxLengthEnforcement,
    bool? showCursor,
    InputBorder? inputBorder,
    InputBorder? focusedInputBorder,
    InputBorder? enabledInputBorder,
    bool? autofocus,
    TextEditingController? textEditingController,
    FocusNode? focusNode,
    TextStyle? textStyle,
    TextStyle? errorTextStyle,
    Color? focusColor,
    Color? unfocusColor,
    Color? disableColor,
    Color? errorColor,
    Color? fillColor,
    double? radius,
    TextAlign? textAlign,
    String? errorText,
    Function(String)? onChanged,
    Function()? onTap,
    Function(String)? onSubmitted,
    double? width,
    double? height,
    double? borderStroke,
    Border? border,
    Widget? suffixIcon,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? errorPadding,
    TextInputType? textInputType,
    bool? obscureText,
    bool? enable,
    Widget? prefixIcon,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    EdgeInsetsGeometry? contentPadding,
    String? hintText,
    int? flexSuffixIcon,
    int? flexPrefixIcon,
    EdgeInsets? suffixIconPadding,
    bool? expands,
    int? maxLines,
    int? minLines,
    TextStyle? hintTextStyle,
    TextStyle? styleLabel,
    TextInputAction? textInputAction,
    List<BoxShadow>? boxShadow,
    Widget? iconLeadingError,
    Widget? labelIconInfo,
    VoidCallback? onTapLabelIconInfo,
    bool? isRequired,
    TextStyle? textStyleWhenIsRequired,
    bool? enableSuggestedText,
    List<String>? suggestedTexts,
  }) {
    return PrimaryTextfieldData(
        suggestedTexts: suggestedTexts ?? this.suggestedTexts,
        enableSuggestedText: enableSuggestedText ?? this.enableSuggestedText,
        textStyleWhenIsRequired: textStyleWhenIsRequired ?? this.textStyleWhenIsRequired,
        isRequired: isRequired ?? this.isRequired,
        flexPrefixIcon: flexPrefixIcon ?? this.flexPrefixIcon,
        labelIconInfo: labelIconInfo ?? this.labelIconInfo,
        onTapLabelIconInfo: onTapLabelIconInfo ?? this.onTapLabelIconInfo,
        iconLeadingError: iconLeadingError ?? this.iconLeadingError,
        labelIcon: labelIcon ?? this.labelIcon,
        labelRequiredTextStyle: labelRequiredTextStyle ?? this.labelRequiredTextStyle,
        labelRequired: labelRequired ?? this.labelRequired,
        maxLengthEnforcement: maxLengthEnforcement ?? this.maxLengthEnforcement,
        boxShadow: boxShadow ?? this.boxShadow,
        onSubmitted: onSubmitted ?? this.onSubmitted,
        focusedInputBorder: focusedInputBorder ?? this.focusedInputBorder,
        enabledInputBorder: enabledInputBorder ?? this.enabledInputBorder,
        inputBorder: inputBorder ?? this.inputBorder,
        autofocus: autofocus ?? this.autofocus,
        textInputAction: textInputAction ?? this.textInputAction,
        showCursor: showCursor ?? this.showCursor,
        hintTextStyle: hintTextStyle ?? this.hintTextStyle,
        label: label ?? this.label,
        showLabel: showLabel ?? this.showLabel,
        styleLabel: styleLabel ?? this.styleLabel,
        textAlign: textAlign ?? this.textAlign,
        textEditingController: textEditingController ?? this.textEditingController,
        focusNode: focusNode ?? this.focusNode,
        textStyle: textStyle ?? this.textStyle,
        errorTextStyle: errorTextStyle ?? this.errorTextStyle,
        focusColor: focusColor ?? this.focusColor,
        unfocusColor: unfocusColor ?? this.unfocusColor,
        disableColor: disableColor ?? this.disableColor,
        errorColor: errorColor ?? this.errorColor,
        fillColor: fillColor ?? this.fillColor,
        radius: radius ?? this.radius,
        errorText: errorText ?? this.errorText,
        onChanged: onChanged ?? this.onChanged,
        width: width ?? this.width,
        height: height ?? this.height,
        borderStroke: borderStroke ?? this.borderStroke,
        border: border ?? this.border,
        suffixIcon: suffixIcon ?? this.suffixIcon,
        padding: padding ?? this.padding,
        errorPadding: errorPadding ?? this.errorPadding,
        textInputType: textInputType ?? this.textInputType,
        obscureText: obscureText ?? this.obscureText,
        enable: enable ?? this.enable,
        prefixIcon: prefixIcon ?? this.prefixIcon,
        maxLength: maxLength ?? this.maxLength,
        inputFormatters: inputFormatters ?? this.inputFormatters,
        contentPadding: contentPadding ?? this.contentPadding,
        hintText: hintText ?? this.hintText,
        flexSuffixIcon: flexSuffixIcon ?? this.flexSuffixIcon,
        suffixIconPadding: suffixIconPadding ?? this.suffixIconPadding,
        expands: expands ?? this.expands,
        maxLines: maxLines ?? this.maxLines,
        minLines: minLines ?? this.minLines,
        onTap: onTap ?? this.onTap);
  }

  PrimaryTextfieldBaseData defaultPrimaryTextField() {
    return PrimaryTextfieldBaseData(
        isRequired: isRequired,
        label: label,
        showLabel: showLabel,
        labelIcon: labelIcon,
        enableSuggestedText: enableSuggestedText,
        suggestedTexts: suggestedTexts,
        maxLengthEnforcement: maxLengthEnforcement,
        onSubmitted: onSubmitted,
        enabledInputBorder: enabledInputBorder,
        focusedInputBorder: focusedInputBorder,
        boxShadow: boxShadow,
        inputBorder: InputBorder.none,
        textInputAction: textInputAction,
        autofocus: autofocus,
        showCursor: showCursor ?? true,
        textEditingController: textEditingController,
        focusNode: focusNode,
        textAlign: textAlign,
        flexPrefixIcon: flexPrefixIcon,
        iconLeadingError: iconLeadingError,
        labelRequired: labelRequired,
        hintTextStyle: hintTextStyle ?? OmniTypographyFoundation.regular14B7B7B7,
        textStyle: textStyle ?? OmniTypographyFoundation.regular12Black454545,
        styleLabel: styleLabel ?? OmniTypographyFoundation.medium14SecondaryBlack000000,
        labelRequiredTextStyle: labelRequiredTextStyle ?? OmniTypographyFoundation.medium14PrimaryRedFF001D,
        errorTextStyle: errorTextStyle ?? OmniTypographyFoundation.regular9YellowFF9900,
        focusColor: focusColor ?? ColorsOmni.black,
        unfocusColor: unfocusColor ?? ColorsOmni.grey707070,
        disableColor: disableColor ?? ColorsOmni.grey707070,
        errorColor: errorColor ?? ColorsOmni.secondaryBlack,
        fillColor: fillColor ?? ColorsOmni.white,
        textStyleWhenIsRequired: textStyleWhenIsRequired ?? OmniTypographyFoundation.bold14SecondaryBlack000000,
        radius: radius ?? 15.r,
        errorText: errorText,
        onChanged: onChanged,
        width: width?.w,
        height: height?.h ?? 40.h,
        borderStroke: borderStroke ?? 0.2.r,
        border: border,
        suffixIcon: suffixIcon,
        padding: padding ?? EdgeInsets.only(left: 20.w, right: 10.w),
        errorPadding: errorPadding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        textInputType: textInputType ?? TextInputType.text,
        obscureText: obscureText,
        enable: enable,
        prefixIcon: prefixIcon,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        contentPadding: contentPadding,
        hintText: hintText,
        flexSuffixIcon: flexSuffixIcon,
        suffixIconPadding: suffixIconPadding,
        onTapLabelIconInfo: onTapLabelIconInfo,
        labelIconInfo: labelIconInfo,
        expands: expands,
        maxLines: maxLines,
        minLines: minLines,
        onTap: onTap);
  }

  PrimaryTextfieldBaseData cedPrimaryTextField({Function()? onTapPrefixIcon, required String value}) {
    return defaultPrimaryTextField().copyWith(
      hintText: hintText ?? '',
      contentPadding: contentPadding,
      padding: padding ?? EdgeInsets.only(left: 10.w, right: 10.w),
      textInputType: TextInputType.number,
      inputFormatters: inputFormatters ?? [FilteringTextInputFormatter.digitsOnly],
      prefixIcon: InkWell(
        onTap: onTapPrefixIcon,
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: ColorsOmni.grey707070,
                  width: 1,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    value,
                    style: OmniTypographyFoundation.medium14SecondaryBlack000000,
                  ),
                  const Icon(Icons.keyboard_arrow_down_rounded, color: ColorsOmni.black)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PrimaryTextfieldBaseData countryCodePrimaryTextField(
      {Function()? onTapPrefixIcon, required String countryCode, required String code}) {
    return defaultPrimaryTextField().copyWith(
      hintText: hintText ?? '',
      showLabel: showLabel,
      contentPadding: const EdgeInsets.only(left: 10, top: 12, bottom: 12),
      padding: padding ?? EdgeInsets.only(left: 10.w, right: 10.w),
      textInputType: TextInputType.number,
      textStyle: OmniTypographyFoundation.medium14SecondaryBlack000000,
      inputFormatters: inputFormatters ?? [FilteringTextInputFormatter.digitsOnly],
      prefixIcon: InkWell(
        onTap: onTapPrefixIcon,
        child: Container(
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: ColorsOmni.grey707070,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (code.isNotEmpty)
                  FlagCountryAsset(
                      data: FlagCountryData(
                    codeFlag: code,
                    width: 18.w,
                  )),
                SizedBox(
                  width: 35.w,
                  child: AutoSizeText("+$countryCode",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: OmniTypographyFoundation.medium14SecondaryBlack000000),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: const SizedBox(
                      width: 15,
                      child: Icon(Icons.keyboard_arrow_down_sharp, color: ColorsOmni.black),
                    ))
              ],
            )),
      ),
    );
  }

  PrimaryTextfieldBaseData multilinePrimaryTextField() {
    return PrimaryTextfieldBaseData(
        hintText: hintText ?? '',
        contentPadding: contentPadding,
        padding: padding ?? EdgeInsets.only(left: 10.w, right: 10.w),
        textInputType: TextInputType.text,
        height: 70.w,
        expands: true,
        enable: true,
        isRequired: false,
        maxLines: null,
        minLines: null,
        label: label,
        showLabel: showLabel,
        labelIcon: labelIcon,
        maxLengthEnforcement: maxLengthEnforcement,
        onSubmitted: onSubmitted,
        enabledInputBorder: enabledInputBorder,
        focusedInputBorder: focusedInputBorder,
        inputBorder: InputBorder.none,
        textInputAction: textInputAction,
        autofocus: autofocus,
        showCursor: showCursor ?? true,
        textEditingController: textEditingController,
        focusNode: focusNode,
        textAlign: textAlign,
        iconLeadingError: iconLeadingError,
        labelRequired: labelRequired,
        hintTextStyle: hintTextStyle ?? OmniTypographyFoundation.regular14Grey7070,
        textStyle: textStyle ?? OmniTypographyFoundation.regular12Black454545,
        styleLabel: styleLabel ?? OmniTypographyFoundation.medium14SecondaryBlack000000,
        labelRequiredTextStyle: labelRequiredTextStyle ?? OmniTypographyFoundation.medium14PrimaryRedFF001D,
        errorTextStyle: errorTextStyle ?? OmniTypographyFoundation.regular9YellowFF9900,
        focusColor: focusColor ?? ColorsOmni.black,
        unfocusColor: unfocusColor ?? ColorsOmni.grey707070,
        disableColor: disableColor ?? ColorsOmni.grey707070,
        errorColor: errorColor ?? ColorsOmni.secondaryBlack,
        fillColor: fillColor ?? ColorsOmni.white,
        flexPrefixIcon: flexPrefixIcon,
        radius: radius ?? 15.r,
        errorText: errorText,
        onChanged: onChanged,
        width: width?.w,
        borderStroke: borderStroke ?? 0.2.r,
        border: border,
        suffixIcon: suffixIcon,
        errorPadding: errorPadding ?? EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        prefixIcon: prefixIcon,
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        flexSuffixIcon: flexSuffixIcon,
        suffixIconPadding: suffixIconPadding,
        onTapLabelIconInfo: onTapLabelIconInfo,
        labelIconInfo: labelIconInfo,
        onTap: onTap);
  }
}
