import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/item_category_data.dart';
import 'package:design_system/atoms/data_models/omni_asset_image.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/data_models/skeleton_element_data.dart';
import 'package:design_system/atoms/images/omni_asset_image.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/atoms/loading_box.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:design_system/foundations/typo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryPageStyle {
  CategoryPageStyle(
      {this.scrollDirection = Axis.horizontal, required this.sliverGridDelegate, this.height, required this.padding});

  final Axis scrollDirection;
  final SliverGridDelegate sliverGridDelegate;
  final double? height;
  final EdgeInsetsGeometry padding;

  CategoryPageStyle.horizontalItemCircle()
      : scrollDirection = Axis.horizontal,
        sliverGridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.25),
        height = 238,
        padding = EdgeInsets.only(left: 18.w);

  CategoryPageStyle.verticalItemCircle()
      : scrollDirection = Axis.vertical,
        sliverGridDelegate =
            SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 10, crossAxisCount: 3, childAspectRatio: 0.9.h),
        height = null,
        padding = EdgeInsets.only(left: 16.w, right: 16.w);
}

class CategoryItemsLoading extends StatefulWidget {
  const CategoryItemsLoading({super.key, required this.style, required this.controller, required this.quantity});

  final CategoryPageStyle style;
  final int quantity;
  final ScrollController controller;

  @override
  State<CategoryItemsLoading> createState() => _CategoryItemsLoadingState();
}

class _CategoryItemsLoadingState extends State<CategoryItemsLoading> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.style.padding,
      child: SizedBox(
        height: widget.style.height,
        width: double.infinity,
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: GridView(
              scrollDirection: widget.style.scrollDirection,
              gridDelegate: widget.style.sliverGridDelegate,
              controller: widget.controller,
              cacheExtent: 0,
              children: List.generate(widget.quantity, (index) => const CategoryItemStyleCircleSkeleton()).toList()),
        ),
      ),
    );
  }
}

class CategoryItems extends StatefulWidget {
  const CategoryItems({super.key, required this.style, required this.categories, required this.controller});

  final CategoryPageStyle style;
  final List<ItemCategoryData> categories;
  final ScrollController controller;

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.style.padding,
      child: SizedBox(
          height: widget.style.height,
          width: double.infinity,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: GridView(
                scrollDirection: widget.style.scrollDirection,
                gridDelegate: widget.style.sliverGridDelegate,
                controller: widget.controller,
                cacheExtent: 0,
                children: widget.categories.map((category) {
                  return CategoryItemStyleCircle(categoryData: category);
                }).toList()),
          )),
    );
  }
}

class CategoryItemStyleCircle extends StatelessWidget {
  const CategoryItemStyleCircle({
    Key? key,
    required this.categoryData,
  }) : super(key: key);
  final ItemCategoryData categoryData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: categoryData.onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      focusColor: Colors.transparent,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  color: categoryData.colorCategory,
                  shape: BoxShape.circle,
                ),
              ),
              if (categoryData.imageUrl.isNotEmpty)
                SizedBox(
                  height: 72,
                  width: 72,
                  child: OmniImageNetwork(
                    data: OmniImageNetworkData(
                      placeholder: const SizedBox.shrink(),
                      errorWidget: const SizedBox.shrink(),
                      url: categoryData.imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              else if (categoryData.icon != null)
                SizedBox(
                  height: 72,
                  width: 72,
                  child: Center(child: categoryData.icon),
                ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: AutoSizeText(categoryData.title,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                minFontSize: 9,
                style: OmniTypographyFoundation.light12SecondaryBlack000000),
          )
        ],
      ),
    );
  }
}

class CategoryItemStyleSimple extends StatelessWidget {
  const CategoryItemStyleSimple({Key? key, required this.categoryData}) : super(key: key);

  final ItemCategoryData categoryData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: categoryData.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: categoryData.colorCategory,
          borderRadius: BorderRadius.circular(7.r),
          boxShadow: const [
            BoxShadow(
              color: Color(0x08000000),
              offset: Offset(0, 3),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(categoryData.title,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: OmniTypographyFoundation.medium12SecondaryBlack000000),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: OmniAssetImage(
                  data: OmniAssetImageData(
                      path: OmniIcons.categoryOffers.pathAsset, fit: BoxFit.fitHeight, heightImage: 50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItemStyleCircleSkeleton extends StatelessWidget {
  const CategoryItemStyleCircleSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingBox(
          data: SkeletonElementData(height: 72, width: 72, shape: BoxShape.circle),
        ),
        const SizedBox(height: 8),
        LoadingBox(
          data: SkeletonElementData(height: 10, width: 72),
        )
      ],
    );
  }
}
