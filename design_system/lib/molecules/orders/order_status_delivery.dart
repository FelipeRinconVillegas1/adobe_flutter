import 'package:auto_size_text/auto_size_text.dart';
import 'package:core/utils/init_widget_secure.dart';
import 'package:design_system/atoms/animation/lottie_custom_animation.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/animations.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:design_system/foundations/images.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:design_system/molecules/bar_status_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../atoms/data_models/primary_image_data.dart';
import '../../atoms/icons/primary_image_asset.dart';
import '../../tokens/sizes.dart';

class OrderStatusDelivery<T> extends StatefulWidget {
  const OrderStatusDelivery({super.key, required this.params});

  final OrderStatusDeliveryParams<T> params;

  @override
  State<OrderStatusDelivery<T>> createState() => _OrderStatusDeliveryState<T>();
}

class _OrderStatusDeliveryState<T> extends State<OrderStatusDelivery<T>> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _repeatCounter = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _repeatCounter++;
        if (_repeatCounter < 3) {
          _controller.reset();
          _controller.forward();
        }
      }
    });
    secureInitWidget((timeStamp) {
      if(mounted){
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.params.padding ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: widget.params.onTap,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: ScreenUtil().screenWidth),
          child: Container(
              decoration: BoxDecoration(
                color: ColorsOmni.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: ColorsOmni.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LottieCustomAnimation(
                          style: LottieCustomAnimationStyle.energyEfficient(),
                          params: LottieCustomAnimationParam(
                              controller: _controller, pathAsset: OmniLottieAnimations.animationCircleRed.pathAsset))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 16, bottom: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Text(widget.params.estimatedDelivery,
                                      style: OmniTypographyFoundation.regular14Black000000,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1),
                                ),
                                const SizedBox(width: 7),
                                const Icon(Icons.arrow_forward_ios_rounded, size: 15, color: ColorsOmni.secondaryBlack)
                              ],
                            ),
                            SizedBox(
                                width: 200.w,
                                child: AutoSizeText(widget.params.timeDelivery,
                                    style: OmniTypographyFoundation.bold16SecondaryBlack000000,
                                    minFontSize: 16,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1)),
                            Text(widget.params.statusName ?? '', style: OmniTypographyFoundation.bold14Green22A011),
                            BarStatusOrder<T>(
                                listStatus: widget.params.listStatus,
                                indexSelected: widget.params.listStatus.indexOf(widget.params.itemSelected as T)),
                            const Divider(
                              color: ColorsOmni.greyE4E4E4,
                              thickness: 0.5,
                              endIndent: 20,
                            ),
                            Row(
                              children: [
                                if (widget.params.iconShippingMethod != null)
                                  PrimarySvgIconAsset(
                                    data: PrimarySvgIconData(
                                        icon: widget.params.iconShippingMethod!, height: 25, fit: BoxFit.fitHeight),
                                  ),
                                if (widget.params.iconShippingMethod != null) const SizedBox(width: 5),
                                Text(
                                  widget.params.shippingMethod,
                                  style: OmniTypographyFoundation.bold14Black161615,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: PrimaryImageAsset(
                        data: PrimaryImageData(
                          height: OmniSizes.heightOrderActive * 0.75,
                          image: ImagesOmni.s99MenBox,
                          fit: BoxFit.fitHeight,
                        ),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}

class OrderStatusDeliveryParams<T> {
  final String estimatedDelivery;
  final String timeDelivery;
  final String shippingMethod;
  final String? statusName;
  final T? itemSelected;
  final List<T> listStatus;
  final VoidCallback? onTap;
  final OmniIcons? iconShippingMethod;
  final EdgeInsetsGeometry? padding;

  const OrderStatusDeliveryParams(
      {required this.estimatedDelivery,
      required this.timeDelivery,
      required this.shippingMethod,
      required this.listStatus,
      required this.itemSelected,
      required this.iconShippingMethod,
      this.padding,
      this.statusName,
      this.onTap});
}

class MockBoxOrdersActive extends StatelessWidget {
  const MockBoxOrdersActive({super.key});

  @override
  Widget build(BuildContext context) {
    return OrderStatusDelivery(
      params: OrderStatusDeliveryParams<String>(
        onTap: () {},
        estimatedDelivery: "Hora de entrega",
        timeDelivery: "Hoy 19 | 17:00 - 20:00",
        padding: EdgeInsets.only(left: 10, right: 10.w, top: 20, bottom: 10),
        shippingMethod: "Envio a domicilio",
        statusName: "Aceptado",
        iconShippingMethod: OmniIcons.s99TruckHomeDelivery,
        listStatus: ["Aceptado", "Preparando", "Enviado", "Entregado"],
        itemSelected: "Preparando",
      ),
    );
  }
}
