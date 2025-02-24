import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:core/utils/init_widget_secure.dart';
import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../atoms/data_models/primary_image_data.dart';
import '../../foundations/images.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    super.key,
    required this.param,
    this.manageQuantityCartItem,
    required this.showPriceCartItem,
    this.cartItemDiscountBanner,
    this.style,
  });

  final ManageQuantityCartItem? manageQuantityCartItem;
  final ShowPriceCartItem showPriceCartItem;
  final CartItemDiscountBanner? cartItemDiscountBanner;
  final CartItemWidgetParam param;
  final CartItemWidgetStyle? style;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> with TickerProviderStateMixin {
  late SlidableController controllerSlidable;
  late bool showTutorialSwipeToDelete;
  CartItemWidgetStyle get _style => widget.style ?? CartItemWidgetStyle.defaultStyle();

  double get sizeFactor => 1;

  @override
  void initState() {
    showTutorialSwipeToDelete = false;
    controllerSlidable = SlidableController(this);
    secureInitWidget((timeStamp) async {
      unawaited(executeAnimationHintSlideToDelete());
    });
    super.initState();
  }

  Future<void> executeAnimationHintSlideToDelete() async {
    try {
      if (widget.param.completer != null) {
        if (widget.param.showHintSlideToDelete) {
          await widget.param.completer!.future;
          if (!mounted) return;
          setState(() {
            showTutorialSwipeToDelete = true;
          });
          controllerSlidable.openTo(-0.5, duration: const Duration(seconds: 1)).then((value) async {
            if (!mounted) return;
            await Future.delayed(const Duration(milliseconds: 500));
            if (!mounted) return;
            controllerSlidable.close(duration: const Duration(seconds: 1));
            Future.delayed(const Duration(seconds: 3), () {
              if (!mounted) return;
              setState(() {
                showTutorialSwipeToDelete = false;
              });
              if (widget.param.onFinishLoadHintSwipeToDelete != null) {
                widget.param.onFinishLoadHintSwipeToDelete!();
              }
            });
          });
        }
      }
    } catch (_) {}
  }

  @override
  void dispose() {
    controllerSlidable.dispose();
    super.dispose();
  }

  Widget getImage() {
    if (widget.param.imageURL != null && widget.param.imageURL!.isNotEmpty) {
      return OmniImageNetwork(
        data: OmniImageNetworkData(
          url: widget.param.imageURL,
          widthImage: _style.sizeImage.width,
          heightImage: _style.sizeImage.height,
          errorWidget: SizedBox(
            height: _style.sizeImage.height,
            width: _style.sizeImage.width,
            child: PrimaryImageAsset(
              data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
            ),
          ),
          placeholder: SizedBox(
            height: _style.sizeImage.height,
            width: _style.sizeImage.width,
          ),
        ),
      );
    }

    if (widget.param.widgetImage != null) return widget.param.widgetImage!;

    return SizedBox(
      height: _style.sizeImage.height,
      width: _style.sizeImage.width,
      child: PrimaryImageAsset(
        data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
      ),
    );
  }

  Widget itemContent() => Container(
    padding: _style.padding,
    decoration: BoxDecoration(
      color: _style.backgroundColor,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: widget.param.onTap,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        getImage(),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: AutoSizeText(
                                  widget.param.name,
                                  style: _style.textStyleName,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              widget.showPriceCartItem,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Qty manager and delete button
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (widget.manageQuantityCartItem != null) widget.manageQuantityCartItem!,
                    if (widget.manageQuantityCartItem != null && widget.param.deleteMode == CartDeleteMode.button)
                      IconButton.filled(
                        icon: PrimarySvgIconAsset(
                          data: PrimarySvgIconData(
                            height: 14 * sizeFactor,
                            width: 14 * sizeFactor,
                            icon: OmniIcons.s99Delete,
                            color: ColorsOmni.white,
                          ),
                        ),
                        constraints: BoxConstraints.tight(Size(30 * sizeFactor, 30 * sizeFactor)),
                        style: ButtonStyle(
                          // BoxConstraints: BoxConstraints.tightFor(fi: 0, minHeight: 0),
                          backgroundColor: MaterialStateProperty.all(ColorsOmni.redFF1335),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          // borderRadius: MaterialStateProperty.all(const BorderRadius.all(Radius.circular(8))),
                        ),
                        onPressed: () => {},
                      )
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (widget.cartItemDiscountBanner != null) ...[
          const CartItemDivider(),
          widget.cartItemDiscountBanner!,
        ],
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return widget.param.deleteMode == CartDeleteMode.button
        ? itemContent()
        : ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: Slidable(
              controller: controllerSlidable,
              enabled: widget.param.enableSlidable,
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      if (widget.param.onTapDelete != null && widget.param.enableSlidable) {
                        widget.param.onTapDelete!();
                      }
                    },
                    backgroundColor: _style.slidableBackgroundColor,
                    foregroundColor: _style.slidableForegroundColor,
                    icon: _style.slidableIcon,
                    label: widget.param.textDelete,
                  )
                ],
              ),
              key: Key(widget.param.name),
              child: SwipeTutorial(
                  onFinishLoadHintSwipeToDelete: widget.param.onFinishLoadHintSwipeToDelete,
                  text: widget.param.textHintSwipeDelete ?? "",
                  showTutorial: showTutorialSwipeToDelete,
                  child: itemContent()),
            ),
          );
  }
}

class ImageProductWithRefound extends StatelessWidget {
  const ImageProductWithRefound({
    super.key,
    this.imageUrl,
    this.refoundImageUrl,
    this.sizeImage = const Size(75, 75),
    this.sizeRefoundImage = const Size(36, 36),
  });

  final String? imageUrl;
  final String? refoundImageUrl;
  final Size sizeImage;
  final Size sizeRefoundImage;

  Widget getImage(String? url, Size sizeImageParam) {
    if (url != null && url.isNotEmpty) {
      return OmniImageNetwork(
        data: OmniImageNetworkData(
          url: url,
          widthImage: sizeImageParam.width,
          heightImage: sizeImageParam.height,
          errorWidget: SizedBox(
            height: sizeImageParam.height,
            width: sizeImageParam.width,
            child: PrimaryImageAsset(
              data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
            ),
          ),
          placeholder: SizedBox(
            height: sizeImageParam.height,
            width: sizeImageParam.width,
          ),
        ),
      );
    }

    return SizedBox(
      height: sizeImageParam.height,
      width: sizeImageParam.width,
      child: PrimaryImageAsset(
        data: PrimaryImageData(image: ImagesOmni.s99placeholder, fit: BoxFit.fitHeight),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getImage(null, sizeImage),
        const SizedBox(height: 4),
        const Icon(Icons.change_circle_outlined, color: ColorsOmni.redFF1335, size: 20),
        const SizedBox(height: 4),
        getImage(refoundImageUrl, sizeRefoundImage),
      ],
    );
  }
}

enum CartDeleteMode { slidable, button }

class CartItemWidgetParam {
  final String? imageURL;
  final Widget? widgetImage;
  final String name;
  final String? textHintSwipeDelete;
  final String sku;
  final bool enableSlidable;
  final String textDelete;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onTapDelete;
  final GestureTapCallback? onFinishLoadHintSwipeToDelete;
  final CartDeleteMode? deleteMode;
  final bool showHintSlideToDelete;
  final Completer<bool>? completer;

  CartItemWidgetParam({
    this.imageURL,
    this.widgetImage,
    this.completer,
    this.textHintSwipeDelete,
    required this.name,
    this.onTap,
    required this.sku,
    this.showHintSlideToDelete = false,
    this.enableSlidable = false,
    this.textDelete = '',
    this.onTapDelete,
    this.onFinishLoadHintSwipeToDelete,
    this.deleteMode = CartDeleteMode.slidable,
  });
}

class CartItemWidgetStyle {
  const CartItemWidgetStyle({
    required this.padding,
    required this.backgroundColor,
    required this.textStyleName,
    required this.sizeImage,
    this.slidableBackgroundColor = ColorsOmni.redFF001D,
    this.slidableForegroundColor,
    this.slidableIcon,
  });

  final EdgeInsets padding;
  final Color backgroundColor;
  final TextStyle textStyleName;
  final Size sizeImage;
  final Color slidableBackgroundColor;
  final Color? slidableForegroundColor;
  final IconData? slidableIcon;

  static CartItemWidgetStyle defaultStyle() {
    return CartItemWidgetStyle(
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: ColorsOmni.white,
      textStyleName: OmniTypographyFoundation.regular14SecondaryBlack000000,
      sizeImage: const Size(75, 75),
      slidableForegroundColor: ColorsOmni.white,
      slidableIcon: Icons.delete,
    );
  }

  static CartItemWidgetStyle disabledStyle() {
    return CartItemWidgetStyle(
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: ColorsOmni.white,
      textStyleName: OmniTypographyFoundation.semiBold14SecondaryBlack000000.copyWith(color: ColorsOmni.greyB7B7B7),
      sizeImage: const Size(75, 75),
      slidableForegroundColor: ColorsOmni.white,
      slidableIcon: Icons.delete,
    );
  }

  //Copy with
  CartItemWidgetStyle copyWith({
    EdgeInsets? padding,
    Color? backgroundColor,
    TextStyle? textStyleName,
    Size? sizeImage,
    Color? slidableBackgroundColor,
    Color? slidableForegroundColor,
    IconData? slidableIcon,
  }) {
    return CartItemWidgetStyle(
      padding: padding ?? this.padding,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textStyleName: textStyleName ?? this.textStyleName,
      sizeImage: sizeImage ?? this.sizeImage,
      slidableBackgroundColor: slidableBackgroundColor ?? this.slidableBackgroundColor,
      slidableForegroundColor: slidableForegroundColor ?? this.slidableForegroundColor,
      slidableIcon: slidableIcon ?? this.slidableIcon,
    );
  }
}
