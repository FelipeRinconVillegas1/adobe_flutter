import 'package:design_system/extension/extension_design.dart';
import 'package:flutter/material.dart';

import '../foundations/colors.dart';
import '../foundations/typo.dart';

class GeneralManagerQuantity extends StatelessWidget {
  const GeneralManagerQuantity({
    super.key,
    required this.param,
    this.style,
  });

  final GeneralManagerQuantityParam param;
  final GeneralManagerQuantityStyle? style;

  GeneralManagerQuantityStyle get _style => style ?? GeneralManagerQuantityStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(_style.borderRadius)),
        border: Border.all(color: ColorsOmni.grayF5F5F5),
      ),
      child: Row(
        children: [
          InkResponse(
            onTap: () {
              param.onDecrease?.call();
            },
            radius: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_style.borderRadius),
                  bottomRight: Radius.circular(_style.borderRadius),
                ),
                color: _style.backgroundColorIcon,
              ),
              padding: EdgeInsets.all(_style.contentPadding),
              child: Icon(
                param.quantity == param.minSaleQty ? _style.iconDelete : _style.iconDecrease,
                color: !param.enableDelete && param.quantity == param.minSaleQty
                    ? ColorsOmni.greyB7B7B7
                    : _style.textColor,
                size: _style.iconSize,
              ),
            ),
          ),
          Expanded(
            child: Text(param.quantity.removeZeroIfDoubleIsDecimal(),
                style: _style.textStyle, textAlign: TextAlign.center),
          ),
          InkResponse(
            onTap: () {
              param.onIncrease?.call();
            },
            radius: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_style.borderRadius),
                color: _style.backgroundColorIcon,
              ),
              padding: EdgeInsets.all(_style.contentPadding),
              child: Icon(
                _style.iconIncrease,
                color: _style.textColor,
                size: _style.iconSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GeneralManagerQuantityParam {
  const GeneralManagerQuantityParam({
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
    required this.minSaleQty,
    this.enableDelete = true,
  });

  final double quantity;
  final double minSaleQty;
  final VoidCallback? onIncrease;
  final VoidCallback? onDecrease;
  final bool enableDelete;
}

class GeneralManagerQuantityStyle {
  const GeneralManagerQuantityStyle({
    required this.backgroundColorIcon,
    required this.textColor,
    required this.iconSize,
    required this.iconIncrease,
    required this.iconDecrease,
    required this.iconDelete,
    required this.borderRadius,
    required this.contentPadding,
    required this.textStyle,
  });

  final Color backgroundColorIcon;
  final Color textColor;
  final double iconSize;
  final IconData iconIncrease;
  final IconData iconDecrease;
  final IconData iconDelete;
  final double borderRadius;
  final double contentPadding;
  final TextStyle textStyle;

  factory GeneralManagerQuantityStyle.defaultStyle() {
    return GeneralManagerQuantityStyle(
      iconSize: 20,
      borderRadius: 8,
      textColor: ColorsOmni.black,
      iconDecrease: Icons.remove,
      iconIncrease: Icons.add,
      iconDelete: Icons.delete_outline,
      textStyle: OmniTypographyFoundation.semiBold14SecondaryBlack000000,
      contentPadding: 4,
      backgroundColorIcon: Colors.blueAccent.withOpacity(0.02),
    );
  }

  GeneralManagerQuantityStyle copyWith({
    Color? backgroundColorIcon,
    Color? textColor,
    double? iconSize,
    IconData? iconIncrease,
    IconData? iconDecrease,
    IconData? iconDelete,
    double? borderRadius,
    double? contentPadding,
    TextStyle? textStyle,
  }) {
    return GeneralManagerQuantityStyle(
      backgroundColorIcon: backgroundColorIcon ?? this.backgroundColorIcon,
      textColor: textColor ?? this.textColor,
      iconSize: iconSize ?? this.iconSize,
      iconIncrease: iconIncrease ?? this.iconIncrease,
      iconDecrease: iconDecrease ?? this.iconDecrease,
      iconDelete: iconDelete ?? this.iconDelete,
      borderRadius: borderRadius ?? this.borderRadius,
      contentPadding: contentPadding ?? this.contentPadding,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}
