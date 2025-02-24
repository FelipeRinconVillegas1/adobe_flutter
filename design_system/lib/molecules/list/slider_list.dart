import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/atoms/visibility_detector_wrapper.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../tokens/sizes.dart';

enum TypeItemInList { normal, subcategories, highlightsOfTheWeek, dayItem }

class SliderList extends StatelessWidget {
  const SliderList({super.key, required this.params, this.style});

  final SliderListParams params;
  final SliderListStyle? style;

  SliderListStyle get _style => style ?? SliderListStyle.defaultStyle();

  Widget getItem(SliderListItem item, TypeItemInList typeItemInList) {
    switch (typeItemInList) {
      case TypeItemInList.normal:
        return normalItem(item);
      case TypeItemInList.subcategories:
        return subcategoriesItem(item);
      case TypeItemInList.highlightsOfTheWeek:
        return highlightsOfTheWeek(item);
      case TypeItemInList.dayItem:
        return DayItem(item: item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: params.titlePadding ?? const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              if (params.title.isNotEmpty)
                Text(params.title, style: OmniTypographyFoundation.bold14SecondaryBlack000000),
              if (params.iconTitle != null) params.iconTitle!,
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: params.title.isNotEmpty ? 10 : 0),
          child: SizedBox(
            height: _style.heightList,
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: ListView.separated(
                itemCount: params.sliderListItem.length,
                padding: params.itemPadding,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return VisibilityDetectorWrapper(
                    detectorKey: Key(params.sliderListItem[index].hashCode.toString()),
                    onChange: (visibilityInfo) {
                      if (visibilityInfo.visibleFraction == 1) {
                        params.sliderListItem[index].onVisibility?.call();
                      }
                    },
                    child: GestureDetector(
                        onTap: params.sliderListItem[index].onTap,
                        child: getItem(params.sliderListItem[index], _style.typeItemInList)),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: _style.widthSeparator);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget normalItem(SliderListItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: OmniImageNetwork(
            data: OmniImageNetworkData(
              placeholder: const SizedBox.shrink(),
              errorWidget: const SizedBox.shrink(),
              heightImage: _style.heightItem,
              widthImage: _style.widthItem,
              url: item.urlImage,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        if (item.name.isNotEmpty || item.description.isNotEmpty) const SizedBox(height: 10),
        if (item.name.isNotEmpty)
          Flexible(child: Text(item.name, style: OmniTypographyFoundation.semiBold14Black161615)),
        if (item.description.isNotEmpty)
          Flexible(child: Text(item.description, style: OmniTypographyFoundation.regular12Black161615)),
      ],
    );
  }

  Widget highlightsOfTheWeek(SliderListItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: OmniImageNetwork(
            data: OmniImageNetworkData(
              placeholder: const SizedBox.shrink(),
              errorWidget: const SizedBox.shrink(),
              heightImage: _style.heightItem,
              widthImage: _style.widthItem,
              url: item.urlImage,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        if (item.name.isNotEmpty)
          SizedBox(
            width: _style.widthItem,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(item.name,
                        overflow: TextOverflow.ellipsis, style: OmniTypographyFoundation.semiBold14Black161615)),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.delivery_dining_outlined, color: ColorsOmni.green3DC32C, size: 15),
                    Text("Envio gratis", style: OmniTypographyFoundation.regular10Green3DC32C)
                  ],
                )
              ],
            ),
          ),
        if (item.description.isNotEmpty) Text(item.description, style: OmniTypographyFoundation.regular12Black161615),
      ],
    );
  }

  Widget subcategoriesItem(SliderListItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        if (item.urlImage.isNotEmpty)
          Container(
            height: _style.heightItem,
            width: _style.widthItem,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: item.colorItem,
              boxShadow: const [
                BoxShadow(
                  color: ColorsOmni.white29000000, // #00000029 in ARGB format
                  blurRadius: 6.0,
                  offset: Offset(0, 3), // x, y
                ),
              ],
            ),
            child: OmniImageNetwork(
              data: OmniImageNetworkData(
                placeholder: const SizedBox.shrink(),
                errorWidget: const SizedBox.shrink(),
                heightImage: _style.heightItem,
                widthImage: _style.widthItem,
                url: item.urlImage,
                fit: BoxFit.scaleDown,
              ),
            ),
          )
        else
          Container(
              height: _style.heightItem,
              width: _style.widthItem,
              decoration: BoxDecoration(
                color: item.colorItem,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: ColorsOmni.white29000000, // #00000029 in ARGB format
                    blurRadius: 6.0,
                    offset: Offset(0, 3), // x, y
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: item.icon,
                ),
              )),
        const SizedBox(height: 5),
        SizedBox(
          width: _style.widthItem,
          height: 50,
          child: Align(
            alignment: Alignment.topCenter,
            child: AutoSizeText(item.name,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: OmniTypographyFoundation.regular10Black161615,
                overflow: TextOverflow.ellipsis,
                minFontSize: 8),
          ),
        )
      ],
    );
  }
}

class SliderListStyle {
  const SliderListStyle({
    required this.heightItem,
    required this.heightList,
    required this.widthItem,
    this.widthSeparator = 10,
    this.typeItemInList = TypeItemInList.normal,
  });
  final double heightList;
  final double heightItem;
  final double widthItem;
  final double widthSeparator;
  final TypeItemInList typeItemInList;

  factory SliderListStyle.defaultStyle() {
    return const SliderListStyle(
        heightList: 205, heightItem: 150, widthItem: 270, typeItemInList: TypeItemInList.normal);
  }

  factory SliderListStyle.augmentedStyle({double width = 300}) {
    return SliderListStyle(
        heightList: 240.h, heightItem: 209.h, widthItem: width, typeItemInList: TypeItemInList.normal);
  }

  factory SliderListStyle.highlightsOfTheWeekStyle() {
    return const SliderListStyle(
        heightList: 210, heightItem: 180, widthItem: 300, typeItemInList: TypeItemInList.highlightsOfTheWeek);
  }

  factory SliderListStyle.subcategoriesStyle() {
    return const SliderListStyle(
        heightList: 125, heightItem: 70, widthItem: 70, typeItemInList: TypeItemInList.subcategories);
  }

  factory SliderListStyle.dayItemStyle() {
    return SliderListStyle(
        heightList: OmniSizes.sizeHeightDayItemList,
        heightItem: OmniSizes.sizeHeightDayItemList,
        widthItem: 60,
        typeItemInList: TypeItemInList.dayItem);
  }

  SliderListStyle copyWith({
    bool? showIcon99,
    double? heightList,
    double? heightItem,
    double? widthItem,
    TypeItemInList? typeItemInList,
    double? widthSeparator,
  }) {
    return SliderListStyle(
      widthSeparator: widthSeparator ?? this.widthSeparator,
      heightList: heightList ?? this.heightList,
      heightItem: heightItem ?? this.heightItem,
      widthItem: widthItem ?? this.widthItem,
      typeItemInList: typeItemInList ?? this.typeItemInList,
    );
  }
}

class SliderListParams {
  final List<SliderListItem> sliderListItem;
  final Widget? iconTitle;
  final String title;
  final EdgeInsets itemPadding;
  final EdgeInsets? titlePadding;

  const SliderListParams({
    required this.sliderListItem,
    this.title = '',
    this.titlePadding,
    this.iconTitle,
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 16),
  });

  SliderListParams copyWith({
    List<SliderListItem>? sliderListItem,
    String? title,
    EdgeInsets? titlePadding,
    Widget? iconTitle,
    EdgeInsets? itemPadding,
  }) {
    return SliderListParams(
      iconTitle: iconTitle ?? this.iconTitle,
      itemPadding: itemPadding ?? this.itemPadding,
      sliderListItem: sliderListItem ?? this.sliderListItem,
      title: title ?? this.title,
      titlePadding: titlePadding ?? this.titlePadding,
    );
  }
}

class SliderListItem {
  final String name;
  final String description;
  final String urlImage;
  final Icon? icon;
  final Color colorItem;
  final String dayShortName;
  final String day;
  final String monthShortName;
  final bool? isSelected;
  final Function()? onTap;
  final Function()? onVisibility;
  final Image? image;
  final bool showIconPadlock;

  const SliderListItem(
      {this.name = '',
      this.urlImage = '',
      this.onTap,
      this.description = '',
      this.colorItem = ColorsOmni.white,
      this.dayShortName = '',
      this.day = '',
      this.monthShortName = '',
      this.isSelected = false,
      this.image,
      this.showIconPadlock = false,
      this.onVisibility,
      this.icon});

  SliderListItem copyWith({
    String? name,
    String? urlImage,
    String? description,
    Color? colorItem,
    Icon? icon,
    String? day,
    String? dayShortName,
    String? monthShortName,
    bool? isSelected,
    Image? image,
    Function()? onTap,
    Function()? onVisibility,
    bool? showIconPadlock,
  }) {
    return SliderListItem(
      showIconPadlock: showIconPadlock ?? this.showIconPadlock,
      image: image ?? this.image,
      colorItem: colorItem ?? this.colorItem,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      urlImage: urlImage ?? this.urlImage,
      day: day ?? this.day,
      dayShortName: dayShortName ?? this.dayShortName,
      monthShortName: monthShortName ?? this.monthShortName,
      onTap: onTap ?? this.onTap,
      isSelected: isSelected ?? this.isSelected,
      description: description ?? this.description,
      onVisibility: onVisibility ?? this.onVisibility,
    );
  }
}

const DayItem dayItemDummy = DayItem(
    item: SliderListItem(
  day: '31',
  dayShortName: 'Dom',
  monthShortName: 'Ene',
  isSelected: true,
));

class DayItem extends StatelessWidget {
  const DayItem({super.key, required this.item});

  final SliderListItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                item.dayShortName,
                style: OmniTypographyFoundation.bold12Black000000.copyWith(height: 1.2, fontSize: 12),
              ),
            ],
          ),
        ),
        Container(
            width: SliderListStyle.dayItemStyle().widthItem,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            decoration: BoxDecoration(
              color: item.isSelected! ? ColorsOmni.redFF001D7A : ColorsOmni.transparent,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: item.isSelected! ? ColorsOmni.redFF001D : ColorsOmni.black454545),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  item.day,
                  style: OmniTypographyFoundation.regular18.copyWith(
                    fontSize: 18,
                    color: item.isSelected! ? ColorsOmni.white : ColorsOmni.black,
                    height: 1.2,
                  ),
                ),
                Text(
                  item.monthShortName,
                  style: OmniTypographyFoundation.light12.copyWith(
                    fontSize: 12,
                    color: item.isSelected! ? ColorsOmni.white : ColorsOmni.black,
                    height: 1.2,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
