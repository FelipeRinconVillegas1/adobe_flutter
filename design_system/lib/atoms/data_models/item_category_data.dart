import 'package:flutter/cupertino.dart';

class ItemCategoryData{
  const ItemCategoryData({
    required this.title,
    required this.imageUrl,
    required this.index,
    this.onTap,
    this.colorCategory,
    this.icon,
  });

  final String title;
  final String imageUrl;
  final Icon? icon;
  final void Function()? onTap;
  final Color? colorCategory;
  final int index;
}