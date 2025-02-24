import 'package:flutter/material.dart';

class SearchListData {
  final bool? showCancelTextButton;
  final String? cancelText;
  final String placeHolder;
  final Widget? headerList;
  final Widget list;
  final Function(String text) getText;
  final Widget? suffixIcon;
  final Widget? loader;
  final Function? onTap;
  final Function? onCanceled;
  final String searchText;
  final Function()? onClear;
  final Function(String text)? onSubmitted;
  const SearchListData(
      {this.showCancelTextButton = false,
      required this.placeHolder,
      required this.list,
      this.headerList,
      required this.getText,
      this.suffixIcon,
      this.loader,
      this.onTap,
      this.onCanceled,
      this.cancelText,
      this.searchText = '',
      this.onClear,
      this.onSubmitted});
}
