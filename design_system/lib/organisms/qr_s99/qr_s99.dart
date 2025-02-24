import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRS99 extends StatelessWidget {
  final String data;
  const QRS99({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: data.toString(),
      size: 230.h,
      dataModuleStyle: const QrDataModuleStyle(
        dataModuleShape: QrDataModuleShape.square,
        color: ColorsOmni.black161615,
      ),
      eyeStyle: const QrEyeStyle(
        eyeShape: QrEyeShape.square,
        color: ColorsOmni.black161615,
      ),
    );
  }
}
