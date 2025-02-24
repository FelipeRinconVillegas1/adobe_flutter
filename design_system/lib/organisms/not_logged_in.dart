import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../atoms/data_models/primary_svg_icon_data.dart';
import '../atoms/icons/primary_svg_icon_asset.dart';
import '../foundations/icons.dart';
import 'data_model/not_loggued_in_data.dart';

class NotLoggedIn extends StatefulWidget {
  final NotLogguedInData data;
  const NotLoggedIn({super.key, required this.data});

  @override
  State<NotLoggedIn> createState() => _NotLoggedInState();
}

class _NotLoggedInState extends State<NotLoggedIn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 100.h),
            child:  PrimarySvgIconAsset(
              data: PrimarySvgIconData(icon: OmniIcons.s99DigitsRed, height: 90.h),
            )
          ),
          Container(
            margin:  EdgeInsets.only(top: 50.h,left: 50.w,right: 50.w),
            child: Text(
              widget.data.titleText,
              style: OmniTypographyFoundation.regular24Grey707070,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: 300,
            child: Text(
              widget.data.subTitleText,
              style: OmniTypographyFoundation.regular15Grey707070,
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 22),
            child: PrimaryButton(
              data: PrimaryButtonData(
                width: 200,
                text: widget.data.buttonText,
                onPressed: () {
                  widget.data.onTap();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
