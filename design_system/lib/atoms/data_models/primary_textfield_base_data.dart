import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PrimaryTextfieldBaseData {
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final int? maxLength;
  final TextStyle? textStyle;
  final TextStyle? textStyleWhenIsRequired;
  final TextStyle? errorTextStyle;
  final TextStyle? hintTextStyle;
  final Color focusColor;
  final Color unfocusColor;
  final Color disableColor;
  final Color errorColor;
  final Color? fillColor;
  final double? radius;
  final String? errorText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final Function(String)? onSubmitted;
  final double? width;
  final double? height;
  final double? borderStroke;
  final Border? border;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? errorPadding;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final TextInputType? textInputType;
  final bool enable;
  final String? label;
  final bool showLabel;
  final TextStyle? styleLabel;
  final Widget? prefixIcon;
  final Widget? labelIcon;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final int flexSuffixIcon;
  final int flexPrefixIcon;
  final EdgeInsets? suffixIconPadding;
  final bool expands;
  final int? minLines;
  final TextAlign? textAlign;
  final bool? showCursor;
  final TextInputAction? textInputAction;
  final bool? autofocus;
  final InputBorder? inputBorder;
  final InputBorder? focusedInputBorder;
  final InputBorder? enabledInputBorder;
  final List<BoxShadow>? boxShadow;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final String? labelRequired;
  final TextStyle? labelRequiredTextStyle;
  final Widget? iconLeadingError;
  final Widget? labelIconInfo;
  final VoidCallback? onTapLabelIconInfo;
  final int? maxLines;
  final bool isRequired;
  final bool enableSuggestedText;
  final List<String> suggestedTexts;

  PrimaryTextfieldBaseData({
    this.styleLabel,
    required this.isRequired,
    this.textStyleWhenIsRequired,
    this.boxShadow,
    this.onTapLabelIconInfo,
    this.labelIconInfo,
    this.iconLeadingError,
    this.labelIcon,
    this.labelRequiredTextStyle,
    this.labelRequired,
    this.maxLengthEnforcement,
    this.label,
    this.inputBorder,
    this.textInputAction,
    this.focusedInputBorder,
    this.enabledInputBorder,
    this.autofocus,
    this.showCursor,
    this.textEditingController,
    this.onSubmitted,
    this.focusNode,
    this.textStyle,
    this.errorTextStyle,
    this.hintTextStyle,
    this.textAlign,
    required this.focusColor,
    required this.unfocusColor,
    required this.disableColor,
    required this.errorColor,
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
    this.obscureText = false,
    this.textInputType,
    this.enable = true,
    this.prefixIcon,
    this.maxLength,
    this.inputFormatters,
    this.hintText,
    this.flexSuffixIcon = 1,
    this.flexPrefixIcon = 4,
    this.suggestedTexts = const [],
    this.enableSuggestedText = false,
    this.suffixIconPadding,
    this.expands = false,
    this.maxLines = 1,
    this.minLines,
    this.onTap,
    this.showLabel = true,
  });

  PrimaryTextfieldBaseData copyWith({
    List<BoxShadow>? boxShadow,
    String? labelRequired,
    Widget? labelIcon,
    VoidCallback? onTapLabelIconInfo,
    MaxLengthEnforcement? maxLengthEnforcement,
    TextStyle? labelRequiredTextStyle,
    Widget? iconLeadingError,
    String? label,
    bool? showLabel,
    bool? showCursor,
    bool? autofocus,
    InputBorder? inputBorder,
    TextInputAction? textInputAction,
    InputBorder? focusedInputBorder,
    InputBorder? enabledInputBorder,
    TextStyle? styleLabel,
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
    String? errorText,
    Function(String)? onChanged,
    double? width,
    double? height,
    double? borderStroke,
    Border? border,
    Widget? suffixIcon,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? errorPadding,
    EdgeInsetsGeometry? contentPadding,
    bool? obscureText,
    TextInputType? textInputType,
    bool? enable,
    Widget? prefixIcon,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    String? hintText,
    int? flexSuffixIcon,
    EdgeInsets? suffixIconPadding,
    bool? expands,
    int? maxLines,
    int? minLines,
    TextStyle? hintTextStyle,
    Function()? onTap,
    Function(String)? onSubmitted,
    TextAlign? textAlign,
    Widget? labelIconInfo,
    int? flexPrefixIcon,
    bool? isRequired,
    TextStyle? textStyleWhenIsRequired,
    List<String>? suggestedTexts,
    bool? enableSuggestedText,
  }) {
    return PrimaryTextfieldBaseData(
        enableSuggestedText: enableSuggestedText ?? this.enableSuggestedText,
        suggestedTexts: suggestedTexts ?? this.suggestedTexts,
        textStyleWhenIsRequired: textStyleWhenIsRequired ?? this.textStyleWhenIsRequired,
        isRequired: isRequired ?? this.isRequired,
        flexPrefixIcon: flexPrefixIcon ?? this.flexPrefixIcon,
        onTapLabelIconInfo: onTapLabelIconInfo ?? this.onTapLabelIconInfo,
        labelIconInfo: labelIconInfo ?? this.labelIconInfo,
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
        textAlign: textAlign ?? this.textAlign,
        textInputAction: textInputAction ?? this.textInputAction,
        hintTextStyle: hintTextStyle ?? this.hintTextStyle,
        label: label ?? this.label,
        showLabel: showLabel ?? this.showLabel,
        showCursor: showCursor ?? this.showCursor,
        styleLabel: styleLabel ?? this.styleLabel,
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
        contentPadding: contentPadding ?? this.contentPadding,
        obscureText: obscureText ?? this.obscureText,
        textInputType: textInputType ?? this.textInputType,
        enable: enable ?? this.enable,
        prefixIcon: prefixIcon ?? this.prefixIcon,
        maxLength: maxLength ?? this.maxLength,
        inputFormatters: inputFormatters ?? this.inputFormatters,
        hintText: hintText ?? this.hintText,
        flexSuffixIcon: flexSuffixIcon ?? this.flexSuffixIcon,
        suffixIconPadding: suffixIconPadding ?? this.suffixIconPadding,
        expands: expands ?? this.expands,
        maxLines: maxLines ?? this.maxLines,
        minLines: minLines ?? this.minLines,
        onTap: onTap ?? this.onTap);
  }
}
