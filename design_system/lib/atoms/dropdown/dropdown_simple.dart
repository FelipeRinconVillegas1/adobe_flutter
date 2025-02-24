import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets_omni.dart';

class DropdownSimple<T> extends StatefulWidget {
  const DropdownSimple(
    this.param, {
    super.key,
    this.style,
  });

  /// Param for dropdown simple widget
  final DropdownSimpleParam<T> param;

  /// Style for dropdown
  /// If this is null, default style will be used
  final DropdownSimpleStyle<T>? style;

  @override
  State<DropdownSimple<T>> createState() => _DropdownSimpleState<T>();
}

class _DropdownSimpleState<T> extends State<DropdownSimple<T>> with SingleTickerProviderStateMixin {
  late DropdownSimpleStyle _style;

  late AnimationController _controllerRotateSuffixIcon;

  @override
  void initState() {
    _style = widget.style ?? DropdownSimpleStyle.defaultStyle();
    _controllerRotateSuffixIcon = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      upperBound: 0.5,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controllerRotateSuffixIcon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
      Visibility(
        visible: widget.param.label.isNotEmpty,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (_style.labelIcon != null) _style.labelIcon!,
                const SizedBox(width: 2),
                Expanded(
                  child: AutoSizeText.rich(
                    TextSpan(
                      text: widget.param.label,
                      style: _style.styleLabel,
                      children: [
                        if (widget.param.isRequired)
                          TextSpan(
                            text: widget.param.labelRequired ?? '',
                            style: widget.param.enabled
                                ? _style.labelRequiredTextStyle
                                : OmniTypographyFoundation.medium14,
                          ),
                      ],
                    ),
                    maxLines: 2,
                    minFontSize: OmniTypography.size14.spMin.truncateToDouble(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
      DropdownSearch<T>(
        enabled: widget.param.enabled,
        onBeforePopupOpening: (value) {
          if (!_controllerRotateSuffixIcon.isAnimating) {
            _controllerRotateSuffixIcon.forward(from: 0.0);
          }
          Color? fillColorSelectorWhenIsOpen = _style.fillColorSelectorWhenIsOpen;
          OutlineInputBorder? borderFocused = _style.dropdownSearchDecoration.focusedBorder as OutlineInputBorder?;
          final dropDownSearchDeco = _style.dropdownSearchDecoration.copyWith(
            fillColor: fillColorSelectorWhenIsOpen,
            focusedBorder: borderFocused?.copyWith(
                borderRadius: BorderRadius.only(
                    topRight: _style.borderRadiusWhenIsOpen ?? Radius.circular(15.r),
                    topLeft: _style.borderRadiusWhenIsOpen ?? Radius.circular(15.r))),
          );
          _style = _style.copyWith(
              fillColorSelector: fillColorSelectorWhenIsOpen, dropdownSearchDecoration: dropDownSearchDeco);
          setState(() {});
          return Future(() => true);
        },
        popupProps: PopupProps.menu(
          onDismissed: () {
            if (!_controllerRotateSuffixIcon.isAnimating) {
              _controllerRotateSuffixIcon.reverse(from: 0.5);
            }
            setState(() {
              _style = widget.style ?? DropdownSimpleStyle.defaultStyle();
            });
          },
          constraints: _style.constraintsItemsList,
          scrollbarProps: const ScrollbarProps(thumbColor: Colors.transparent),
          menuProps: const MenuProps(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            elevation: 0,
          ),
          containerBuilder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.r),
                  bottomRight: Radius.circular(15.r),
                ),
                border: Border(
                    right: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r),
                    left: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r),
                    bottom: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r)),
              ),
              child: child,
            );
          },
          itemBuilder: _style.customItemBuilder ??
              (context, item, isSelected) {
                return Container(
                  padding: _style.paddingItemBuilder,
                  decoration: item != widget.param.items.last ? _style.decorationItemBuilder : null,
                  child: Text(
                    widget.param.dropdownSearchItemAsString(item),
                    style: _style.textStyleItems,
                  ),
                );
              },
        ),
        items: widget.param.items,
        dropdownButtonProps: const DropdownButtonProps(
          isVisible: false,
        ),
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: _style.dropdownSearchDecoration.copyWith(
            prefixIcon: widget.param.showPrefixIcon
                ? widget.param.enabled
                    ? widget.style?.prefixIcon
                    : const Icon(Icons.lock_outline, color: ColorsOmni.greyB7B7B7, size: 18)
                : null,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.r)),
              borderSide: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r),
            ),
            suffixIconConstraints: const BoxConstraints(
              minWidth: 0,
            ),
            suffixIcon: const SizedBox.shrink(),
          ),
          baseStyle: _style.baseStyle,
        ),
        dropdownBuilder: (context, _) {
          return Container(
              height: _style.heightDropdown,
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Expanded(
                      child: widget.param.selectedItem != null
                          ? AutoSizeText(
                              widget.param.dropdownSearchItemAsString(widget.param.selectedItem as T),
                              maxLines: 1,
                              minFontSize: 10,
                              style: widget.param.enabled
                                  ? widget.param.isRequired
                                      ? _style.textStyleItemSelected
                                      : _style.textStyleItems
                                  : _style.textStyleItemSelected.copyWith(color: ColorsOmni.greyB7B7B7),
                            )
                          : AutoSizeText(
                              maxLines: 1,
                              widget.param.textHint ?? '',
                              style: _style.hintTextStyle,
                            )),
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: widget.param.enabled
                          ? ((widget.param.activeClear ?? false) && widget.param.selectedItem != null)
                              ? GestureDetector(
                                  onTap: widget.param.onClear,
                                  child: _style.suffixIconClear,
                                )
                              : RotationTransition(
                                  turns: Tween(begin: 0.0, end: 1.0).animate(_controllerRotateSuffixIcon),
                                  child: _style.suffixIcon,
                                )
                          : const SizedBox.shrink())
                ],
              ));
        },
        itemAsString: widget.param.dropdownSearchItemAsString,
        onChanged: widget.param.onChanged,
        selectedItem: widget.param.selectedItem,
      ),
    ]);
  }
}

class DropdownSimpleParam<T> {
  /// List of items to show in dropdown
  final List<T> items;

  /// This is the selected item
  final T? selectedItem;

  /// This function will be called when user select an item
  final Function(T?)? onChanged;

  /// This function is used to convert the item to string to show in dropdown
  final String Function(T) dropdownSearchItemAsString;

  /// Label for dropdown simple
  final String label;

  /// Error text for dropdown simple, if this is not null, error style will be used
  final String? errorText;

  /// Active unselection item
  final bool? activeClear;

  final bool showPrefixIcon;

  final VoidCallback? onClear;

  final String? labelRequired;

  final String? textHint;

  final bool isRequired;

  final bool enabled;

  const DropdownSimpleParam({
    required this.items,
    required this.dropdownSearchItemAsString,
    this.isRequired = false,
    this.showPrefixIcon = false,
    this.textHint,
    this.selectedItem,
    this.labelRequired,
    this.activeClear,
    this.onClear,
    this.onChanged,
    this.label = '',
    this.errorText,
    this.enabled = true,
  });

  //Copy with
  DropdownSimpleParam<T> copyWith(
      {List<T>? items,
      T? selectedItem,
      Function(T?)? onChanged,
      String Function(T)? dropdownSearchItemAsString,
      String? label,
      String? errorText,
      bool? activeClear,
      bool? showPrefixIcon,
      VoidCallback? onClear,
      String? labelRequired,
      bool? isRequired,
      bool? enabled,
      String? textHint}) {
    return DropdownSimpleParam<T>(
      textHint: textHint ?? this.textHint,
      items: items ?? this.items,
      selectedItem: selectedItem ?? this.selectedItem,
      onChanged: onChanged ?? this.onChanged,
      dropdownSearchItemAsString: dropdownSearchItemAsString ?? this.dropdownSearchItemAsString,
      label: label ?? this.label,
      errorText: errorText ?? this.errorText,
      activeClear: activeClear ?? this.activeClear,
      showPrefixIcon: showPrefixIcon ?? this.showPrefixIcon,
      onClear: onClear ?? this.onClear,
      labelRequired: labelRequired ?? this.labelRequired,
      isRequired: isRequired ?? this.isRequired,
      enabled: enabled ?? this.enabled,
    );
  }
}

class DropdownSimpleStyle<T> {
  const DropdownSimpleStyle({
    required this.dropdownSearchDecoration,
    required this.textStyleItems,
    required this.textStyleItemSelected,
    required this.constraintsItemsList,
    required this.errorLabelTextStyle,
    required this.styleLabel,
    required this.heightDropdown,
    required this.hintTextStyle,
    this.suffixIconClear,
    this.labelRequiredTextStyle,
    this.labelIcon,
    this.fillColorSelector,
    this.decorationItemBuilder,
    this.fillColorSelectorWhenIsOpen,
    this.paddingItemBuilder,
    this.borderRadiusWhenIsOpen,
    required this.suffixIconColor,
    required this.suffixIcon,
    required this.baseStyle,
    this.prefixIcon,
    this.customItemBuilder,
  });

  /// This function is used to build custom item in dropdown list if needed
  /// If this function is null, default item will be used
  final Widget Function(BuildContext, T, bool)? customItemBuilder;

  /// Decoration for dropdown
  final InputDecoration dropdownSearchDecoration;

  /// Style for items in dropdown list
  final TextStyle textStyleItems;

  /// Style for item selected
  final TextStyle textStyleItemSelected;

  /// Constraints for dropdown list
  final BoxConstraints constraintsItemsList;

  /// Style for error text
  final TextStyle errorLabelTextStyle;

  /// Style for error text
  final TextStyle hintTextStyle;

  /// Style for label text
  final TextStyle styleLabel;

  final Widget suffixIcon;

  /// This prefix is showed only if showPrefixIcon of params is set un true
  final Widget? prefixIcon;

  final Color suffixIconColor;

  final Color? fillColorSelector;

  final Color? fillColorSelectorWhenIsOpen;

  final TextStyle baseStyle;

  /// Icon for label
  final Widget? labelIcon;

  final Widget? suffixIconClear;

  final double heightDropdown;

  final TextStyle? labelRequiredTextStyle;

  final BoxDecoration? decorationItemBuilder;

  final EdgeInsets? paddingItemBuilder;

  final Radius? borderRadiusWhenIsOpen;

  /// Default style for dropdown
  DropdownSimpleStyle.productDetailStyle({Color suffixIconColor_ = ColorsOmni.primaryRed})
      : textStyleItems = OmniTypographyFoundation.regular12SecondaryBlack000000,
        textStyleItemSelected = OmniTypographyFoundation.bold14SecondaryBlack000000,
        hintTextStyle = OmniTypographyFoundation.medium14SecondaryBlack000000,
        paddingItemBuilder = const EdgeInsets.only(top: 6.5, bottom: 6.5, left: 12, right: 12),
        borderRadiusWhenIsOpen = Radius.circular(8.r),
        decorationItemBuilder = null,
        customItemBuilder = null,
        suffixIconColor = suffixIconColor_,
        baseStyle = const TextStyle(color: ColorsOmni.white),
        styleLabel = OmniTypographyFoundation.medium14SecondaryBlack000000,
        errorLabelTextStyle = OmniTypographyFoundation.medium14SecondaryBlack000000,
        constraintsItemsList = const BoxConstraints(maxHeight: 200),
        labelRequiredTextStyle = OmniTypographyFoundation.medium14PrimaryRedFF001D,
        labelIcon = Icon(Icons.account_circle_outlined, color: ColorsOmni.secondaryBlack, size: 18.h),
        suffixIconClear = Icon(Icons.highlight_remove_outlined, color: ColorsOmni.primaryRed, size: 23.h),
        prefixIcon = const Icon(Icons.search, color: ColorsOmni.primaryRed, size: 25),
        fillColorSelector = ColorsOmni.grayF5F5F5,
        fillColorSelectorWhenIsOpen = ColorsOmni.redFFCCD1,
        suffixIcon = Center(
          child: PrimarySvgIconAsset(
            data: PrimarySvgIconData(
                icon: OmniIcons.arrowDownSteelGray,
                colorFilter: ColorFilter.mode(
                  suffixIconColor_,
                  BlendMode.srcIn,
                )),
          ),
        ),
        heightDropdown = 44,
        dropdownSearchDecoration = InputDecoration(
          fillColor: ColorsOmni.grayF5F5F5,
          focusColor: ColorsOmni.grayF5F5F5,
          hoverColor: ColorsOmni.grayF5F5F5,
          suffixIconColor: Colors.transparent,
          constraints: const BoxConstraints(maxHeight: 44),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            borderSide: BorderSide.none,
          ),
        );

  /// Default style for dropdown
  DropdownSimpleStyle.defaultStyle({Color suffixIconColor_ = ColorsOmni.primaryRed})
      : textStyleItems = OmniTypographyFoundation.regular12SecondaryBlack000000,
        textStyleItemSelected = OmniTypographyFoundation.bold14SecondaryBlack000000,
        hintTextStyle = OmniTypographyFoundation.light12GreyB7B7B7,
        customItemBuilder = null,
        fillColorSelector = null,
        paddingItemBuilder = const EdgeInsets.all(16),
        borderRadiusWhenIsOpen = Radius.circular(15.r),
        decorationItemBuilder = BoxDecoration(
            border: Border(
          bottom: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r),
        )),
        fillColorSelectorWhenIsOpen = null,
        suffixIconColor = suffixIconColor_,
        baseStyle = const TextStyle(color: ColorsOmni.white),
        styleLabel = OmniTypographyFoundation.medium14SecondaryBlack000000,
        errorLabelTextStyle = OmniTypographyFoundation.medium14SecondaryBlack000000,
        constraintsItemsList = const BoxConstraints(maxHeight: 300),
        labelRequiredTextStyle = OmniTypographyFoundation.medium14PrimaryRedFF001D,
        labelIcon = Icon(Icons.account_circle_outlined, color: ColorsOmni.secondaryBlack, size: 18.h),
        suffixIconClear = Icon(Icons.highlight_remove_outlined, color: ColorsOmni.primaryRed, size: 23.h),
        prefixIcon = const Icon(Icons.search, color: ColorsOmni.primaryRed, size: 25),
        suffixIcon = Center(
          child: PrimarySvgIconAsset(
            data: PrimarySvgIconData(
                icon: OmniIcons.arrowDownSteelGray,
                colorFilter: ColorFilter.mode(
                  suffixIconColor_,
                  BlendMode.srcIn,
                )),
          ),
        ),
        heightDropdown = 40.h,
        dropdownSearchDecoration = InputDecoration(
          fillColor: ColorsOmni.transparent,
          focusColor: ColorsOmni.transparent,
          hoverColor: ColorsOmni.transparent,
          iconColor: ColorsOmni.transparent,
          suffixIconColor: Colors.transparent,
          constraints: BoxConstraints(maxHeight: 40.h),
          isDense: true,
          contentPadding: EdgeInsets.only(left: 10.w, right: 0),
          filled: true,
          hintStyle: const TextStyle(overflow: TextOverflow.visible),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 25,
            maxWidth: 40,
            minHeight: 25,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            borderSide: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            borderSide: BorderSide(color: ColorsOmni.grey707070, width: 0.2.r),
          ),
        );

  DropdownSimpleStyle<T> copyWith({
    InputDecoration? dropdownSearchDecoration,
    TextStyle? textStyleItems,
    TextStyle? textStyleItemSelected,
    BoxConstraints? constraintsItemsList,
    TextStyle? errorLabelTextStyle,
    TextStyle? styleLabel,
    Widget Function(BuildContext, T, bool)? customItemBuilder,
    Widget? suffixIcon,
    Color? suffixIconColor,
    TextStyle? baseStyle,
    Widget? labelIcon,
    Widget? suffixIconClear,
    double? heightDropdown,
    TextStyle? labelRequiredTextStyle,
    bool? isRequired,
    Widget? prefixIcon,
    TextStyle? hintTextStyle,
    Color? fillColorSelector,
    Color? fillColorSelectorWhenIsOpen,
    BoxDecoration? decorationItemBuilder,
    EdgeInsets? paddingItemBuilder,
    Radius? borderRadiusWhenIsOpen,
  }) {
    return DropdownSimpleStyle<T>(
      borderRadiusWhenIsOpen: borderRadiusWhenIsOpen ?? this.borderRadiusWhenIsOpen,
      paddingItemBuilder: paddingItemBuilder ?? this.paddingItemBuilder,
      fillColorSelectorWhenIsOpen: fillColorSelectorWhenIsOpen ?? this.fillColorSelectorWhenIsOpen,
      decorationItemBuilder: decorationItemBuilder ?? this.decorationItemBuilder,
      fillColorSelector: fillColorSelector ?? this.fillColorSelector,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      hintTextStyle: hintTextStyle ?? this.hintTextStyle,
      labelRequiredTextStyle: labelRequiredTextStyle ?? this.labelRequiredTextStyle,
      heightDropdown: heightDropdown ?? this.heightDropdown,
      textStyleItemSelected: textStyleItemSelected ?? this.textStyleItemSelected,
      labelIcon: labelIcon ?? this.labelIcon,
      suffixIconColor: suffixIconColor ?? this.suffixIconColor,
      suffixIconClear: suffixIconClear ?? this.suffixIconClear,
      baseStyle: baseStyle ?? this.baseStyle,
      dropdownSearchDecoration: dropdownSearchDecoration ?? this.dropdownSearchDecoration,
      textStyleItems: textStyleItems ?? this.textStyleItems,
      constraintsItemsList: constraintsItemsList ?? this.constraintsItemsList,
      errorLabelTextStyle: errorLabelTextStyle ?? this.errorLabelTextStyle,
      styleLabel: styleLabel ?? this.styleLabel,
      customItemBuilder: customItemBuilder ?? this.customItemBuilder,
      suffixIcon: suffixIcon ?? this.suffixIcon,
    );
  }
}
