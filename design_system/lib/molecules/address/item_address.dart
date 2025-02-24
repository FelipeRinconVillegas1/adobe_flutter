import 'package:design_system/atoms/buttons/radio_button.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/molecules/simple_item_list.dart';
import 'package:flutter/material.dart';

import '../../atoms/data_models/primary_svg_icon_data.dart';
import '../../atoms/icons/primary_svg_icon_asset.dart';
import '../../foundations/icons.dart';

class ItemAddress extends StatelessWidget {
  const ItemAddress({super.key, required this.param, this.style});

  final ItemAddressParam param;

  final ItemAddressStyle? style;

  ItemAddressStyle get _style => style ?? ItemAddressStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return SimpleItemList(
      style: _style.simpleItemListStyle,
      param: param.simpleItemListParam.copyWith(
        onTap: () {
          if(param.onTapItem != null) {
            param.onTapItem!();
          }
        },
        widgetLeft: RadioButton<bool>(
            groupValue: true,
            value: param.isSelected,
            onChanged: (value) {
              if(param.onTapItem != null) {
                param.onTapItem!();
              }
            },
            style: RadioButtonStyle(
                fillColorSelected: _style.activeColor,
                fillColorUnselected: _style.inactiveColor,
                borderColorUnselected: _style.inactiveColor)),
        widgetRight: _Options(
          showOptions: param.showOptions,
          onTapDelete: param.onTapDelete,
          onTapEdit: param.onTapEdit,
          onTapOptions: param.onTapOptions,
        ),
      ),
    );
  }
}

class _Options extends StatefulWidget {
  const _Options(
      {super.key,
      this.onTapDelete,
      this.onTapEdit,
      this.onTapOptions,
      this.deleteIcon,
      this.editIcon,
      this.optionsIcon = const Icon(Icons.more_vert),
      this.showOptions = false});

  final void Function()? onTapDelete;
  final void Function()? onTapEdit;
  final void Function()? onTapOptions;

  final Widget? deleteIcon;
  final Widget? editIcon;
  final Widget optionsIcon;

  final bool showOptions;

  @override
  State<_Options> createState() => _OptionsState();
}

class _OptionsState extends State<_Options> {
  late bool showOptions;

  @override
  void initState() {
    showOptions = widget.showOptions;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onTapEdit != null && widget.onTapDelete == null
        ? SizedBox(
            width: 40,
            child: IconButton(
                onPressed: widget.onTapEdit,
                icon: widget.editIcon ??
                    const PrimarySvgIconAsset(
                      data: PrimarySvgIconData(
                        icon: OmniIcons.s99editAddress,
                      ),
                    )),
          )
        : showOptions
            ? Row(
                children: [
                  if (widget.onTapDelete != null)
                    SizedBox(
                      width: 40,
                      child: IconButton(
                          onPressed: widget.onTapDelete,
                          icon: widget.deleteIcon ??
                              const PrimarySvgIconAsset(
                                data: PrimarySvgIconData(
                                  icon: OmniIcons.s99deleteAddress,
                                ),
                              )),
                    ),
                  if (widget.onTapEdit != null)
                    SizedBox(
                      width: 40,
                      child: IconButton(
                          onPressed: widget.onTapEdit,
                          icon: widget.editIcon ??
                              const PrimarySvgIconAsset(
                                data: PrimarySvgIconData(
                                  icon: OmniIcons.s99editAddress,
                                ),
                              )),
                    )
                ],
              )
            : widget.onTapDelete != null || widget.onTapEdit != null
                ? IconButton(onPressed: () => setState(() => showOptions = true), icon: widget.optionsIcon)
                : const SizedBox.shrink();
  }
}

class ItemAddressParam {
  final void Function()? onTapDelete;
  final void Function()? onTapEdit;
  final void Function()? onTapOptions;
  final void Function()? onTapItem;

  final bool isSelected;

  final bool showOptions;
  final SimpleItemListParam simpleItemListParam;

  ItemAddressParam({
    this.onTapDelete,
    this.onTapEdit,
    this.onTapOptions,
    required this.isSelected,
    required this.simpleItemListParam,
    this.onTapItem,
    this.showOptions = false,
  });

//Copy with
}

class ItemAddressStyle {
  final Color activeColor;
  final Color inactiveColor;

  final SimpleItemListStyle simpleItemListStyle;

  ItemAddressStyle({
    required this.activeColor,
    required this.inactiveColor,
    required this.simpleItemListStyle,
  });

  factory ItemAddressStyle.defaultStyle() {
    return ItemAddressStyle(
      activeColor: ColorsOmni.primaryRed,
      inactiveColor: ColorsOmni.grey707070,
      simpleItemListStyle: SimpleItemListStyle.defaultStyle().copyWith(
        paddingTitle: const EdgeInsets.only(bottom: 2, left: 8),
        paddingSubTitle: const EdgeInsets.only(left: 8),
      ),
    );
  }
}
