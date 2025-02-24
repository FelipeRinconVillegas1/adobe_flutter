import 'dart:async';
import 'package:core/utils/extensions/string_extension.dart';
import 'package:design_system/extension/extension_design.dart';
import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../atoms/data_models/skeleton_element_data.dart';
import '../../atoms/loading_box.dart';

enum ManagerQuantityStateCartItem { showQuantity, managerQuantity, addButton, loading }

enum TypeActionCartItem { increase, decrease }

typedef AsyncValueGetterAndSetterCartItem<K, T> = Future<K> Function(T value);

class ManageQuantityCartItem extends ConsumerStatefulWidget {
  const ManageQuantityCartItem({super.key, this.style, required this.param});

  final ManageQuantityCartItemStyle? style;
  final ManageQuantityItemCartParam param;

  @override
  ConsumerState<ManageQuantityCartItem> createState() => _ManageQuantityCartItemState();
}

class _ManageQuantityCartItemState extends ConsumerState<ManageQuantityCartItem> {
  ManageQuantityCartItemStyle get _style => widget.style ?? ManageQuantityCartItemStyle.defaultStyle();
  Timer? _timer;
  late double currentQuantity;
  bool _isLoadingProducts = false;
  late ManagerQuantityStateCartItem _state;

  double height() {
    if (widget.param.height != null) {
      return widget.param.height!;
    } else {
      return 40;
    }
  }

  @override
  void initState() {
    super.initState();
    currentQuantity = widget.param.quantity;
    if (widget.param.showLoading) {
      _state = ManagerQuantityStateCartItem.loading;
    } else if (currentQuantity == 0) {
      _state = ManagerQuantityStateCartItem.addButton;
    } else {
      _state = ManagerQuantityStateCartItem.showQuantity;
    }
  }

  @override
  void didUpdateWidget(covariant ManageQuantityCartItem oldWidget) {
    if (_timer != null && _timer!.isActive) return;
    if (_state != ManagerQuantityStateCartItem.loading) {
      currentQuantity = widget.param.quantity;
      if (currentQuantity == 0) {
        _state = ManagerQuantityStateCartItem.addButton;
      } else {
        _state = ManagerQuantityStateCartItem.showQuantity;
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  ///Hide the quantity manager after
  void _startVisibilityTimerToHideQuantityManager(
      AsyncValueGetterAndSetterCartItem<bool, QuantityToUpdateItemCart>? onEndTimer, TypeActionCartItem typeAction) {
    _timer?.cancel();
    if (!_isLoadingProducts) {
      _isLoadingProducts = true;
      widget.param.onStart?.call();
    }
    _timer = Timer(
      const Duration(milliseconds: 800),
      () async {
        await _executeDeleteAction(onEndTimer, typeAction);
      },
    );
  }

  Future<void> _executeDeleteAction(
      AsyncValueGetterAndSetterCartItem<bool, QuantityToUpdateItemCart>? onEndTimer, TypeActionCartItem typeAction,
      {bool isDeleteItem = false}) async {
    _timer?.cancel();
    if (onEndTimer != null) {
      if (mounted) {
        setState(() {
          _state = ManagerQuantityStateCartItem.loading;
        });
      }
      bool resultAction = await onEndTimer.call(QuantityToUpdateItemCart(
        quantity: typeAction == TypeActionCartItem.increase
            ? (currentQuantity - widget.param.quantity).formatNumberTwoDecimalToDouble()
            : currentQuantity,
        isDelete: isDeleteItem,
      ));

      if (_isLoadingProducts) {
        _isLoadingProducts = false;
        widget.param.onEnd?.call();
      }

      ///Si el resultado es false, significa que fallo la operación y se debe regresar a la cantidad anterior
      if (!resultAction) {
        currentQuantity = widget.param.quantity;
      }
    }
    if (mounted) {
      setState(() {
        _state =
            (currentQuantity == 0) ? ManagerQuantityStateCartItem.addButton : ManagerQuantityStateCartItem.showQuantity;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.param.height,
      width: widget.param.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_style.borderRadius),
        border: Border.all(color: _style.borderColor),
      ),
      child: widget.param.isLoading || _state == ManagerQuantityStateCartItem.loading
          ? LoadingBox(
              data: SkeletonElementData(
                width: double.maxFinite,
                height: double.maxFinite,
              ),
            )
          : widget.param.showOnlyQuantity
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.param.quantityText, style: _style.textStyleQuantity, textAlign: TextAlign.center),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(widget.param.unitOfMeasure,
                          style: _style.textStyleunitOfMeasure, textAlign: TextAlign.center),
                    )
                  ],
                )
              : Row(
                  children: [
                    InkResponse(
                      onTap: () {
                        if (widget.param.onDecreaseEndTimer == null) {
                          return;
                        }
                        if (currentQuantity == widget.param.minSalesQty) {
                          if (!_isLoadingProducts) {
                            _isLoadingProducts = true;
                            widget.param.onStart?.call();
                          }
                          _executeDeleteAction(
                            widget.param.onDecreaseEndTimer,
                            TypeActionCartItem.decrease,
                            isDeleteItem: true,
                          );
                          return;
                        }
                        _startVisibilityTimerToHideQuantityManager(
                            widget.param.onDecreaseEndTimer, TypeActionCartItem.decrease);
                        if (currentQuantity >= widget.param.minSalesQty) {
                          setState(() {
                            currentQuantity =
                                (currentQuantity - widget.param.minSalesQty).formatNumberTwoDecimalToDouble();
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_style.borderRadius),
                          color: _style.backgroundColorIcon,
                        ),
                        padding: EdgeInsets.all(_style.contentPadding),
                        child: Icon(
                          currentQuantity <= widget.param.minSalesQty
                              ? Icons.delete_outline_rounded
                              : _style.iconDecrease,
                          color: widget.param.blockRemoveDialog && (int.tryParse(widget.param.quantityText) ?? 0) == 1
                              ? ColorsOmni.gray
                              : _style.primaryColor,
                          size:
                              widget.param.quantity <= widget.param.minSalesQty ? _style.iconSize - 5 : _style.iconSize,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(currentQuantity.removeZeroIfDoubleIsDecimal(),
                              style: _style.textStyleQuantity, textAlign: TextAlign.center),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(widget.param.unitOfMeasure,
                                style: _style.textStyleunitOfMeasure, textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                    InkResponse(
                      onTap: () {
                        if (widget.param.onIncreaseEndTimer == null) {
                          return;
                        }
                        _startVisibilityTimerToHideQuantityManager(
                            widget.param.onIncreaseEndTimer, TypeActionCartItem.increase);
                        setState(() {
                          currentQuantity =
                              (currentQuantity + widget.param.minSalesQty).formatNumberTwoDecimalToDouble();
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(_style.borderRadius),
                          color: _style.backgroundColorIcon,
                        ),
                        padding: EdgeInsets.all(_style.contentPadding),
                        child: Icon(
                          _style.iconIncrease,
                          color: widget.param.onIncreaseEndTimer == null ? _style.disabledColor : _style.primaryColor,
                          size: _style.iconSize,
                        ),
                      ),
                    )
                  ],
                ),
    );
  }
}

class ManageQuantityCartItemStyle {
  final IconData iconDecrease;
  final IconData iconIncrease;
  final TextStyle textStyleQuantity;
  final TextStyle textStyleunitOfMeasure;
  final Color backgroundColor;
  final Color backgroundColorIcon;
  final Color disabledColor;

  /// This is the primary color of the border and the icon color
  final Color primaryColor;
  final Color borderColor;
  final double borderRadius;
  final double iconSize;
  final double contentPadding;

  ManageQuantityCartItemStyle(
      {required this.iconDecrease,
      required this.iconIncrease,
      required this.textStyleQuantity,
      required this.textStyleunitOfMeasure,
      required this.backgroundColor,
      required this.primaryColor,
      required this.borderRadius,
      required this.iconSize,
      required this.contentPadding,
      required this.backgroundColorIcon,
      required this.borderColor,
      required this.disabledColor});

  factory ManageQuantityCartItemStyle.defaultStyle() {
    return ManageQuantityCartItemStyle(
        iconSize: 23.w,
        borderRadius: 5,
        backgroundColor: ColorsOmni.white,
        borderColor: ColorsOmni.greyF5F5F5,
        primaryColor: ColorsOmni.black161615,
        iconDecrease: Icons.remove,
        iconIncrease: Icons.add,
        textStyleQuantity: OmniTypographyFoundation.semiBold14Black161615,
        textStyleunitOfMeasure: OmniTypographyFoundation.semiBold8Black,
        contentPadding: 4,
        backgroundColorIcon: Colors.blueAccent.withOpacity(0.02),
        disabledColor: ColorsOmni.gray);
  }

  ///copyWith method
  ManageQuantityCartItemStyle copyWith({
    IconData? iconDecrease,
    IconData? iconIncrease,
    TextStyle? textStyleQuantity,
    TextStyle? textStyleunitOfMeasure,
    Color? backgroundColor,
    Color? primaryColor,
    Color? borderColor,
    double? borderRadius,
    double? iconSize,
    double? contentPadding,
    Color? backgroundColorIcon,
    Color? disabledColor,
  }) {
    return ManageQuantityCartItemStyle(
      iconDecrease: iconDecrease ?? this.iconDecrease,
      iconIncrease: iconIncrease ?? this.iconIncrease,
      textStyleQuantity: textStyleQuantity ?? this.textStyleQuantity,
      textStyleunitOfMeasure: textStyleunitOfMeasure ?? this.textStyleunitOfMeasure,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      primaryColor: primaryColor ?? this.primaryColor,
      borderColor: borderColor ?? this.borderColor,
      borderRadius: borderRadius ?? this.borderRadius,
      iconSize: iconSize ?? this.iconSize,
      contentPadding: contentPadding ?? this.contentPadding,
      backgroundColorIcon: backgroundColorIcon ?? this.backgroundColorIcon,
      disabledColor: disabledColor ?? this.disabledColor,
    );
  }
}

class QuantityToUpdateItemCart {
  final double quantity;
  final bool isDelete;

  QuantityToUpdateItemCart({required this.quantity, this.isDelete = false});
}

class ManageQuantityItemCartParam {
  /// This is the quantity of the item in the cart
  final String quantityText;
  final double quantity;
  final String unitOfMeasure;

  /// This is the function that will be called when the user press the increase button
  final AsyncValueGetterAndSetterCartItem<bool, QuantityToUpdateItemCart>? onIncreaseEndTimer;

  /// This is the function that will be called when the user press the decrease button
  final AsyncValueGetterAndSetterCartItem<bool, QuantityToUpdateItemCart>? onDecreaseEndTimer;

  final Function()? onStart;
  final Function()? onEnd;

  final bool showLoading;

  /// Optional size
  final double? height;
  final double? width;

  /// Block the remove dialog when the user press the decrease button
  final bool blockRemoveDialog;
  final bool isOutOfStock;
  final bool isLoading;
  final bool showOnlyQuantity;
  final double minSalesQty;

  ManageQuantityItemCartParam({
    required this.quantityText,
    required this.minSalesQty,
    required this.quantity,
    this.onStart,
    this.onEnd,
    this.showLoading = false,
    this.unitOfMeasure = '',
    this.height = 40,
    this.onDecreaseEndTimer,
    this.onIncreaseEndTimer,
    this.width,
    this.blockRemoveDialog = false,
    this.isOutOfStock = false,
    this.isLoading = false,
    this.showOnlyQuantity = false,
  });
}
