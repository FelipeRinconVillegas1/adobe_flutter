import 'dart:async';

import 'package:core/domain/entity/wishlist.fr.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AccordionButtonData {
  AccordionButtonData({
    this.title,
    this.titleWidget,
    this.child,
    this.titleStyle,
    this.backgroundColor,
    this.height,
    this.width,
    this.padding,
    this.contentPadding,
    this.buttonColor,
    this.borderRadius,
    this.boxShadow,
    this.isExpanded,
  });

  final String? title;
  final Widget? titleWidget;
  final Widget? child;
  final double? height;
  final double? width;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? contentPadding;
  final Color? buttonColor;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;
  final StreamController<bool>? isExpanded;

  AccordionButtonData copyWith({
    String? title,
    Widget? titleWidget,
    Widget? child,
    double? height,
    double? width,
    TextStyle? titleStyle,
    Color? backgroundColor,
    EdgeInsets? padding,
    EdgeInsets? contentPadding,
    Color? buttonColor,
    double? borderRadius,
    List<BoxShadow>? boxShadow,
    StreamController<bool>? isExpanded,
  }) {
    return AccordionButtonData(
      title: title ?? this.title,
      titleWidget: titleWidget ?? this.titleWidget,
      child: child ?? this.child,
      height: height ?? this.height,
      width: width ?? this.width,
      titleStyle: titleStyle ?? this.titleStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
      contentPadding: contentPadding ?? this.contentPadding,
      buttonColor: buttonColor ?? this.buttonColor,
      borderRadius: borderRadius ?? this.borderRadius,
      boxShadow: boxShadow ?? this.boxShadow,
      isExpanded: isExpanded ?? this.isExpanded,
    );
  }

  AccordionButtonData mainData() {
    return AccordionButtonData(
      title: title,
      child: child,
      titleWidget: titleWidget,
      width: double.infinity,
      height: 50.h,
      titleStyle: titleStyle ?? OmniTypographyFoundation.medium14Grey707070,
      backgroundColor: backgroundColor ?? ColorsOmni.white,
      padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
      contentPadding: contentPadding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      buttonColor: buttonColor ?? ColorsOmni.grey707070,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      isExpanded: isExpanded,
    );
  }

  AccordionButtonData description(String? html) {
    return mainData().copyWith(
      child: Container(
        height: height,
        width: double.infinity,
        color: backgroundColor,
        child: html != null ? HtmlWidget(html) : const SizedBox.shrink(),
      ),
    );
  }

  AccordionButtonData legal(List<String> legalTerms) {
    return mainData().copyWith(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            legalTerms.length,
            (index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h),
                child: Text(
                  '* ${legalTerms[index]}',
                  style: OmniTypographyFoundation.regular14Grey7070,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AccordionButtonData wishlist({
    required String baseTitle,
    required String newListName,
    TextStyle? boldStyle,
    WishList? wishlistSelected,
    required List<WishList> wishlist,
    required VoidCallback onCreateNewList,
    required Function(WishList) onWishlistTap,
  }) {
    final boldStyleText = boldStyle ?? OmniTypographyFoundation.bold16SecondaryBlack000000;
    return mainData().copyWith(
        backgroundColor: ColorsOmni.lightPurple,
        height: 50.h,
        width: double.infinity,
        borderRadius: 10.h,
        titleWidget: Expanded(
          child: Row(
            children: [
              Text(
                baseTitle,
                style: boldStyleText,
              ),
              Expanded(
                child: Text(
                  wishlistSelected?.name ?? '',
                  style: titleStyle,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorsOmni.darkShadow.withOpacity(0.5),
            blurRadius: 6,
            spreadRadius: -2,
          ),
        ],
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ...List.generate(
                wishlist.length,
                (index) {
                  final wishlistItem = wishlist[index];
                  return ListTileBasic(
                    data: ListTileBasicData(
                      title: wishlistItem.name,
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      omniIcons: OmniIcons.wishlist,
                      onTap: () => onWishlistTap(wishlistItem),
                      titleStyle: titleStyle ?? OmniTypographyFoundation.regular14Grey7070,
                    ),
                  );
                },
              ),
              ListTileBasic(
                data: ListTileBasicData(
                  title: newListName,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  omniIcons: OmniIcons.addRounded,
                  onTap: onCreateNewList,
                  titleStyle: titleStyle ?? OmniTypographyFoundation.regular14Grey7070,
                ),
              ),
            ],
          ),
        ));
  }
}
