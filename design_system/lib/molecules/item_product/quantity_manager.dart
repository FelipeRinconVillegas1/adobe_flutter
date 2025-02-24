import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:core/utils/extensions/string_extension.dart';
import 'package:design_system/extension/extension_design.dart';
import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ManagerQuantityState { showQuantity, managerQuantity, addButton, loading }

enum TypeAction { increase, decrease }

typedef AsyncValueGetterAndSetter<K, T> = Future<K> Function(T value);

class ManagerQuantityItem extends ConsumerStatefulWidget {
  const ManagerQuantityItem({super.key, this.style, required this.param});

  final ManagerQuantityItemCartStyle? style;
  final ManagerQuantityItemCartParam param;

  @override
  ConsumerState<ManagerQuantityItem> createState() => _ManagerQuantityItemCartState();
}

class _ManagerQuantityItemCartState extends ConsumerState<ManagerQuantityItem> {
  ManagerQuantityItemCartStyle get _style => widget.style ?? ManagerQuantityItemCartStyle.defaultStyle();

  Timer? _timer;
  late double currentQuantity;
  bool _isLoadingProducts = false;
  late ManagerQuantityState _state;

  Color _getBackgroundColor(ManagerQuantityState state) {
    switch (state) {
      case ManagerQuantityState.showQuantity:
        return _style.showQuantityBackgroundColor;
      case ManagerQuantityState.managerQuantity:
        return _style.backgroundColor;
      case ManagerQuantityState.addButton:
        return _style.backgroundColor;
      case ManagerQuantityState.loading:
        return _style.backgroundColor;
    }
  }

  double _getWidth(ManagerQuantityState state) {
    switch (state) {
      case ManagerQuantityState.showQuantity:
        return _style.width;
      case ManagerQuantityState.managerQuantity:
        return _style.withManagerQuantity;
      case ManagerQuantityState.addButton:
        return _style.width;
      case ManagerQuantityState.loading:
        return _style.width;
    }
  }

  ///Hide the quantity manager after
  void _startVisibilityTimerToHideQuantityManager(
      WidgetRef ref, AsyncValueGetterAndSetter<bool, double>? onEndTimer, TypeAction typeAction) {
    _timer?.cancel();
    if (!_isLoadingProducts) {
      _isLoadingProducts = true;
      widget.param.onStart?.call();
    }
    _timer = Timer(
      widget.param.visibilityManagerQuantityDuration,
      () async {
        if (onEndTimer != null) {
          if (mounted) {
            setState(() {
              _state = ManagerQuantityState.loading;
            });
          }
          bool resultAction = await onEndTimer.call(typeAction == TypeAction.increase
              ? (currentQuantity - widget.param.quantity).formatNumberTwoDecimalToDouble()
              : currentQuantity);

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
            _state = (currentQuantity == 0) ? ManagerQuantityState.addButton : ManagerQuantityState.showQuantity;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    currentQuantity = widget.param.quantity;
    if (widget.param.showLoading) {
      _state = ManagerQuantityState.loading;
    } else if (currentQuantity == 0) {
      _state = ManagerQuantityState.addButton;
    } else {
      _state = ManagerQuantityState.showQuantity;
    }
  }

  @override
  void didUpdateWidget(covariant ManagerQuantityItem oldWidget) {
    if (_timer != null && _timer!.isActive) return;
    if (_state != ManagerQuantityState.loading) {
      currentQuantity = widget.param.quantity;
      if (currentQuantity == 0) {
        _state = ManagerQuantityState.addButton;
      } else {
        _state = ManagerQuantityState.showQuantity;
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  Widget _getBody(ManagerQuantityState state) {
    switch (state) {
      case ManagerQuantityState.showQuantity:
        return InkWell(
          onTap: () {
            setState(() {
              _state = ManagerQuantityState.managerQuantity;
              currentQuantity = (currentQuantity + widget.param.minSaleQty).formatNumberTwoDecimalToDouble();
            });
            _startVisibilityTimerToHideQuantityManager(ref, widget.param.onIncreaseEndTimer, TypeAction.increase);
          },
          child: Center(
            child: _ShowQuantity(
              param: widget.param,
              quantity: currentQuantity,
              textStyle: _style.textStyle,
            ),
          ),
        );
      case ManagerQuantityState.managerQuantity:
        return _ManagerQuantity(
          param: widget.param.copyWith(
            onDecrease: () {
              _startVisibilityTimerToHideQuantityManager(ref, widget.param.onDecreaseEndTimer, TypeAction.decrease);
              if (currentQuantity >= widget.param.minSaleQty) {
                setState(() {
                  currentQuantity = (currentQuantity - widget.param.minSaleQty).formatNumberTwoDecimalToDouble();
                });
              }
            },
            onIncrease: () {
              _startVisibilityTimerToHideQuantityManager(ref, widget.param.onIncreaseEndTimer, TypeAction.increase);
              setState(() {
                currentQuantity = (currentQuantity + widget.param.minSaleQty).formatNumberTwoDecimalToDouble();
              });
            },
            quantity: currentQuantity,
          ),
          style: _style,
        );
      case ManagerQuantityState.addButton:
        return _AddButton(
          backgroundColor: _style.backgroundColor,
          icon: Icons.add,
          iconColor: _style.iconColor,
          iconSize: _style.iconSize,
          onTap: () async {
            setState(() {
              _state = ManagerQuantityState.managerQuantity;
              currentQuantity = (currentQuantity + widget.param.minSaleQty).formatNumberTwoDecimalToDouble();
            });
            _startVisibilityTimerToHideQuantityManager(ref, widget.param.onIncreaseEndTimer, TypeAction.increase);
          },
        );
      case ManagerQuantityState.loading:
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(_style.textColor),
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _style.height,
      width: _getWidth(_state),
      decoration: BoxDecoration(
        color: _getBackgroundColor(_state),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(_style.borderRadius),
          bottomLeft: Radius.circular(_style.borderRadius),
        ),
        border: Border.all(color: _style.textColor),
      ),
      child: AnimatedSwitcher(
        duration: _style.animationDuration,
        child: _getBody(_state),
      ),
    );
  }
}

class _ShowQuantity extends ConsumerWidget {
  final ManagerQuantityItemCartParam param;
  final double quantity;
  final TextStyle textStyle;

  const _ShowQuantity({required this.param, required this.quantity, required this.textStyle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      quantity.removeZeroIfDoubleIsDecimal(),
      style: textStyle,
    );
  }
}

class _AddButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final double iconSize;

  final Function()? onTap;

  const _AddButton(
      {required this.backgroundColor,
      required this.icon,
      required this.onTap,
      required this.iconColor,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}

class _ManagerQuantity extends StatelessWidget {
  const _ManagerQuantity({
    required this.param,
    required ManagerQuantityItemCartStyle style,
  }) : _style = style;

  final ManagerQuantityItemCartParam param;
  final ManagerQuantityItemCartStyle _style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkResponse(
          onTap: () {
            param.onDecrease?.call();
          },
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
              param.quantity <= param.minSaleQty ? _style.iconDelete : _style.iconDecrease,
              color: _style.textColor,
              size: _style.iconSize,
            ),
          ),
        ),
        Expanded(
          child: AutoSizeText(param.quantity.removeZeroIfDoubleIsDecimal(),
              style: _style.textStyle, textAlign: TextAlign.center),
        ),
        InkResponse(
          onTap: () {
            param.onIncrease?.call();
          },
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
    );
  }
}

class ManagerQuantityItemCartStyle {
  final IconData iconDecrease;
  final IconData iconIncrease;
  final IconData iconDelete;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color backgroundColorIcon;

  /// This is the primary color of the border and the icon color
  final Color textColor;
  final Color iconColor;

  /// This is the color of the quantity text background, when only showed the quantity
  final Color showQuantityBackgroundColor;
  final double borderRadius;
  final double iconSize;
  final double contentPadding;

  /// This is the duration of the animation when the quantity manager is showed or hided
  final Duration animationDuration;

  /// Optional size
  final double height;
  final double width;
  final double withManagerQuantity;

  ManagerQuantityItemCartStyle({
    required this.iconDecrease,
    required this.iconIncrease,
    required this.iconDelete,
    required this.textStyle,
    required this.backgroundColor,
    required this.showQuantityBackgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.iconSize,
    required this.contentPadding,
    required this.backgroundColorIcon,
    required this.iconColor,
    required this.animationDuration,
    required this.height,
    required this.width,
    required this.withManagerQuantity,
  });

  factory ManagerQuantityItemCartStyle.defaultStyle() {
    return ManagerQuantityItemCartStyle(
      iconSize: 20,
      borderRadius: 8,
      backgroundColor: ColorsOmni.redFF1335,
      showQuantityBackgroundColor: ColorsOmni.green3DC32C,
      textColor: ColorsOmni.white,
      iconDecrease: Icons.remove,
      iconIncrease: Icons.add,
      iconDelete: Icons.delete_outline,
      textStyle: OmniTypographyFoundation.semiBold14WhiteFFFFFF,
      contentPadding: 4,
      backgroundColorIcon: Colors.blueAccent.withOpacity(0.02),
      iconColor: ColorsOmni.white,
      animationDuration: const Duration(milliseconds: 600),
      height: 35,
      width: 35,
      withManagerQuantity: 85,
    );
  }
}

class ManagerQuantityItemCartParam {
  /// This is the quantity of the item in the cart
  final double quantity;

  /// This is the function that will be called when the user press the increase button
  final AsyncValueGetterAndSetter<bool, double> onIncreaseEndTimer;

  /// This is the function that will be called when the user press the decrease button
  final AsyncValueGetterAndSetter<bool, double> onDecreaseEndTimer;

  final Function()? onDecrease;
  final Function()? onIncrease;

  final Function()? onStart;
  final Function()? onEnd;

  /// This is the function that will be called when the end of the timer is reached and the quantity manager is hidden
  final Function(int)? onCompleteTimer;

  /// Block the remove dialog when the user press the decrease button
  final bool blockRemoveDialog;

  /// This is the duration that the quantity manager will be showed before hide it.
  final Duration visibilityManagerQuantityDuration;

  final bool showLoading;

  final double minSaleQty;

  ManagerQuantityItemCartParam({
    required this.quantity,
    required this.onIncreaseEndTimer,
    required this.onDecreaseEndTimer,
    required this.minSaleQty,
    this.onCompleteTimer,
    this.onStart,
    this.onEnd,
    this.onDecrease,
    this.onIncrease,
    this.showLoading = false,
    this.blockRemoveDialog = false,
    this.visibilityManagerQuantityDuration = const Duration(seconds: 2),
  });

  //Copy with
  ManagerQuantityItemCartParam copyWith({
    double? quantity,
    double? minSaleQty,
    Function()? onDecrease,
    Function()? onIncrease,
    AsyncValueGetterAndSetter<bool, double>? onIncreaseEndTimer,
    AsyncValueGetterAndSetter<bool, double>? onDecreaseEndTimer,
    double? height,
    double? width,
    bool? blockRemoveDialog,
    Duration? visibilityManagerQuantityDuration,
    Function(int)? onCompleteTimer,
  }) {
    return ManagerQuantityItemCartParam(
      quantity: quantity ?? this.quantity,
      minSaleQty: minSaleQty ?? this.minSaleQty,
      onDecrease: onDecrease ?? this.onDecrease,
      onIncrease: onIncrease ?? this.onIncrease,
      onIncreaseEndTimer: onIncreaseEndTimer ?? this.onIncreaseEndTimer,
      onDecreaseEndTimer: onDecreaseEndTimer ?? this.onDecreaseEndTimer,
      blockRemoveDialog: blockRemoveDialog ?? this.blockRemoveDialog,
      visibilityManagerQuantityDuration: visibilityManagerQuantityDuration ?? this.visibilityManagerQuantityDuration,
      onCompleteTimer: onCompleteTimer ?? this.onCompleteTimer,
    );
  }
}
