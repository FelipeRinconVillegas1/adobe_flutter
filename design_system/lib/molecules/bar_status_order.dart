import 'package:design_system/atoms/animation/lottie_custom_animation.dart';
import 'package:design_system/foundations/animations.dart';
import 'package:design_system/foundations/colors.dart';
import 'package:flutter/material.dart';

class BarStatusOrder<T> extends StatelessWidget {
  const BarStatusOrder({super.key, this.indexSelected, this.listStatus = const []})
      : assert(listStatus.length > 0, 'listStatus must be not empty'),
        assert(indexSelected == null || (indexSelected <= listStatus.length - 1),
            'indexSelected must be less than listStatus length');
  final int? indexSelected;
  final List<T> listStatus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 25,
              width: 25,
              child: indexSelected != null && index <= indexSelected!
                  ? LottieCustomAnimation(
                      style: LottieCustomAnimationStyle.energyEfficient(),
                      params: LottieCustomAnimationParam(
                          pathAsset: OmniLottieAnimations.animationCheckOk.pathAsset, repeat: false))
                  : const Icon(Icons.circle_outlined, color: ColorsOmni.redFF001D, size: 20),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 15,
              child: Center(
                  child: Container(
                height: 1,
                color: ColorsOmni.redFF001D,
              )),
            );
          },
          itemCount: listStatus.length),
    );
  }
}
