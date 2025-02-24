import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SnackBar snackBarCodeTopMessage(
    {required String message, required BuildContext context, Duration duration = const Duration(milliseconds: 4000)}) {
  return SnackBar(
    duration: duration,
    content: Container(
      decoration: BoxDecoration(color: ColorsOmni.black454545, borderRadius: BorderRadius.circular(15.r)),
      margin:
          EdgeInsets.fromLTRB(0, 0, 0, MediaQuery.of(context).size.height - 150 - MediaQuery.of(context).padding.top),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            const Icon(Icons.check, color: ColorsOmni.fluorescentPositiveGreen),
            const SizedBox(width: 12),
            Expanded(child: Text(message, style: OmniTypographyFoundation.regular12White)),
            GestureDetector(
                onTap: () {
                  if(context.mounted){
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  }
                },
                child: const Icon(Icons.highlight_remove_outlined, color: ColorsOmni.white)),
          ],
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
  );
}
