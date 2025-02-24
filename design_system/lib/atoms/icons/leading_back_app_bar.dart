import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class LeadingIconBackAppBar extends StatelessWidget {
  const LeadingIconBackAppBar({super.key, this.param, this.style});

  final LeadingIconBackAppBarParam? param;
  final LeadingIconBackAppBarStyle? style;

  LeadingIconBackAppBarStyle get _style => style ?? LeadingIconBackAppBarStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (param?.onPressed != null) {
          param?.onPressed?.call();
        } else {
          Navigator.pop(context);
        }
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: _style.decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Icon(Icons.arrow_back, color: ColorsOmni.black, size: param?.size))
          ],
        ),
      ),
    );
  }
}

class LeadingIconBackAppBarStyle {
  final BoxDecoration decoration;

  const LeadingIconBackAppBarStyle({required this.decoration});

  factory LeadingIconBackAppBarStyle.defaultStyle() {
    return const LeadingIconBackAppBarStyle(
      decoration: BoxDecoration(color: Colors.white),
    );
  }

  factory LeadingIconBackAppBarStyle.roundedBox() {
    return const LeadingIconBackAppBarStyle(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5),
          ],
          color: Colors.white),
    );
  }
}

class LeadingIconBackAppBarParam {
  final void Function()? onPressed;
  final double? size;

  const LeadingIconBackAppBarParam({
    this.onPressed,
    this.size,
  });
}
