import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../atoms/data_models/primary_svg_icon_data.dart';

class YesNoQuestionRadioButton extends StatefulWidget {
  const YesNoQuestionRadioButton(
      {super.key,
      required this.textYes,
      required this.textNo,
      this.title = "",
      this.textRequired,
      this.onChangeValue,
      this.icon,
      this.defaultValue});
  final String textYes;
  final String textNo;
  final String title;
  final String? textRequired;
  final bool? defaultValue;
  final OmniIcons? icon;
  final Function(bool)? onChangeValue;

  @override
  State<YesNoQuestionRadioButton> createState() => _YesNoQuestionRadioButtonState();
}

class _YesNoQuestionRadioButtonState extends State<YesNoQuestionRadioButton> {
  bool? _isActive;

  @override
  void initState() {
    _isActive = widget.defaultValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title.isNotEmpty)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.icon != null)
                PrimarySvgIconAsset(
                    data: PrimarySvgIconData(icon: widget.icon!, color: ColorsOmni.secondaryBlack, height: 15)),
              if (widget.icon != null) SizedBox(width: 5.w),
              Flexible(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: OmniTypographyFoundation.medium14SecondaryBlack000000,
                ),
              )
            ],
          ),
        if (widget.title.isNotEmpty) const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ItemChipTip(
              iconLeading: Icons.radio_button_checked_outlined,
              iconLeadingUnchecked: Icons.radio_button_unchecked_outlined,
              text: widget.textYes,
              isActive: _isActive ?? false,
              style: ItemChipTipStyle.registerStyle(),
              onTap: () {
                setState(() {
                  _isActive = true;
                });
                widget.onChangeValue?.call(_isActive!);
              },
            ),
            SizedBox(width: 5.w),
            ItemChipTip(
              iconLeading: Icons.radio_button_checked_outlined,
              iconLeadingUnchecked: Icons.radio_button_unchecked_outlined,
              text: widget.textNo,
              isActive: _isActive != null ? !_isActive! : false,
              onTap: () {
                setState(() {
                  _isActive = false;
                });
                widget.onChangeValue?.call(_isActive!);
              },
              style: ItemChipTipStyle.registerStyle(),
            )
          ],
        )
      ],
    );
  }
}
