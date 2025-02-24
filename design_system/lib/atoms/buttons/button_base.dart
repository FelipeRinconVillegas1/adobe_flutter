import 'package:design_system/atoms/data_models/primary_button_base_data.dart';
import 'package:design_system/atoms/data_models/skeleton_element_data.dart';
import 'package:design_system/atoms/loading_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonBase extends StatelessWidget {
  const ButtonBase({
    super.key,
    required this.data,
  });

  final PrimaryButtonBaseData data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: data.width,
      height: data.height,
      child: data.isLoading == true
          ? LoadingBox(
              data: SkeletonElementData(
                height: data.height ?? 40.h,
                width: data.width ?? double.infinity,
                borderRadius: BorderRadius.circular(21.r),
              ),
            )
          : ElevatedButton(
              onPressed: data.isDisabled ? null : data.onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: data.activeColor,
                surfaceTintColor: data.activeColor,
                disabledBackgroundColor: data.disabledColor,
                foregroundColor: data.foreGroundColor,
                elevation: data.elevation,
                side: data.side,
                padding: data.padding,
                shape: data.radius != null
                    ? RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(data.radius!)),
                      )
                    : null,
                shadowColor: data.shadowColor,
              ),
              child: data.child,
            ),
    );
  }
}
