import 'package:design_system/foundations/typo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../foundations/colors.dart';

class SmsCodeTextField extends StatefulWidget {
  const SmsCodeTextField({Key? key, required this.param, this.style}) : super(key: key);
  final SmsCodeParam param;
  final SmsCodeStyle? style;

  @override
  State<SmsCodeTextField> createState() => _SmsCodeTextFieldState();
}

class _SmsCodeTextFieldState extends State<SmsCodeTextField> {
  final formKey = GlobalKey<FormState>();

  SmsCodeStyle get _style => widget.style ?? SmsCodeStyle.defaultStyle();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: Pinput(
                androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsRetrieverApi,
                controller: widget.param.pinController,
                focusNode: widget.param.focusNode,
                length: widget.param.itemLength,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: _style.pinTheme,
                separatorBuilder: (index) => _style.separatorWidget,
                validator: widget.param.validator,
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: widget.param.onCompleted,
                onChanged: widget.param.onChanged,
                cursor: _style.cursor,
                focusedPinTheme: _style.focusedPinTheme,
                submittedPinTheme: _style.submittedPinTheme,
                errorPinTheme: _style.errorPinTheme,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmsCodeParam {
  SmsCodeParam({
    this.onCompleted,
    this.onChanged,
    this.validator,
    required this.focusNode,
    required this.pinController,
    this.itemLength = 4,
  });
  final Function(String)? onCompleted;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final FocusNode focusNode;
  final TextEditingController pinController;
  final int itemLength;

  static Future<String?> getAppSignature() async {
    final String? signature = await SmartAuth().getAppSignature();
    return signature;
  }
}

class SmsCodeStyle {
  const SmsCodeStyle({
    this.pinTheme,
    this.cursor,
    required this.separatorWidget,
    this.fillColor = ColorsOmni.white,
    this.errorPinTheme,
    this.focusedPinTheme,
    this.submittedPinTheme,
  });

  final PinTheme? pinTheme;
  final PinTheme? focusedPinTheme;
  final PinTheme? submittedPinTheme;
  final PinTheme? errorPinTheme;
  final Color fillColor;
  final Widget? cursor;
  final Widget separatorWidget;

  SmsCodeStyle copyWith({
    PinTheme? pinTheme,
    Widget? cursor,
    Widget? separatorWidget,
    Color? fillColor,
    PinTheme? focusedPinTheme,
    PinTheme? submittedPinTheme,
    PinTheme? errorPinTheme,
  }) {
    return SmsCodeStyle(
      pinTheme: pinTheme ?? this.pinTheme,
      cursor: cursor ?? this.cursor,
      separatorWidget: separatorWidget ?? this.separatorWidget,
      fillColor: fillColor ?? this.fillColor,
      focusedPinTheme: focusedPinTheme ?? this.focusedPinTheme,
      submittedPinTheme: submittedPinTheme ?? this.submittedPinTheme,
      errorPinTheme: errorPinTheme ?? this.errorPinTheme,
    );
  }

  factory SmsCodeStyle.defaultStyle() {
    final defaultPinTheme = PinTheme(
      width: 64.w,
      height: 64.w,
      textStyle: OmniTypographyFoundation.semiBold24SecondaryBlack000000,
      decoration: BoxDecoration(
          color: ColorsOmni.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: ColorsOmni.grey707070)),
    );
    return SmsCodeStyle(
        fillColor: ColorsOmni.white,
        pinTheme: defaultPinTheme,
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: ColorsOmni.black),
          ),
        ),
        submittedPinTheme: defaultPinTheme.copyWith(
          decoration: defaultPinTheme.decoration!.copyWith(
            border: Border.all(color: ColorsOmni.black),
          ),
        ),
        errorPinTheme: defaultPinTheme.copyBorderWith(
          border: Border.all(color: ColorsOmni.primaryRed),
        ),
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 9),
              width: 22,
              height: 1,
              color: ColorsOmni.black,
            ),
          ],
        ),
        separatorWidget: SizedBox(width: 12.w));
  }
}
