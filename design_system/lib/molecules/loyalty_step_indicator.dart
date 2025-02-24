import 'package:auto_size_text/auto_size_text.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/foundations/export.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:flutter/material.dart';

class LoyaltyStepIndicator extends StatelessWidget {
  const LoyaltyStepIndicator(
      {super.key, required this.step, required this.totalStep, this.style, required this.textPrize});

  final int step;
  final int totalStep;
  final String textPrize;
  final LoyaltyStepIndicatorStyle? style;

  LoyaltyStepIndicatorStyle get _style => style ?? LoyaltyStepIndicatorStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 6,
      children: List.generate(totalStep + 1, (index) {
        /// Show first step indicator
        if (index == 0) {
          return step > 1
              ? _StepCompletedIndicator(
                  showSeparator: false,
                  sizeStep: _style.sizeStep,
                  withSeparator: _style.withSeparator,
                  heightSeparator: _style.heightSeparator)
              : _StepUncompletedIndicator(
                  showSeparator: false,
                  sizeStep: _style.sizeStep,
                  withSeparator: _style.withSeparator,
                  heightSeparator: _style.heightSeparator);
        }

        /// Show step indicator
        if (totalStep > index) {
          return index < step
              ? _StepCompletedIndicator(
                  showSeparator: true,
                  sizeStep: _style.sizeStep,
                  withSeparator: _style.withSeparator,
                  heightSeparator: _style.heightSeparator)
              : _StepUncompletedIndicator(
                  showSeparator: true,
                  sizeStep: _style.sizeStep,
                  withSeparator: _style.withSeparator,
                  heightSeparator: _style.heightSeparator);
        }

        /// Show label
        return _LabelPrize(
            completed: step == totalStep,
            textPrize: textPrize,
            textStyleStepCompleted: _style.textStyleStepCompleted,
            textStyleStepUncompleted: _style.textStyleStepUncompleted,
            withSeparator: _style.withSeparator,
            heightSeparator: _style.heightSeparator);
      }),
    );
  }
}

class LoyaltyStepIndicatorStyle {
  final double sizeStep;
  final double withSeparator;
  final double heightSeparator;

  final TextStyle textStyleStepCompleted;
  final TextStyle textStyleStepUncompleted;

  ///Constructor with names
  const LoyaltyStepIndicatorStyle({
    required this.sizeStep,
    required this.withSeparator,
    required this.heightSeparator,
    required this.textStyleStepCompleted,
    required this.textStyleStepUncompleted,
  });

  ///Default instance
  factory LoyaltyStepIndicatorStyle.defaultStyle() => LoyaltyStepIndicatorStyle(
        sizeStep: 22,
        withSeparator: 28,
        heightSeparator: 3,
        textStyleStepCompleted: OmniTypographyFoundation.semiBold10Grey5B636C
            .copyWith(color: ColorsOmni.white),
        textStyleStepUncompleted: OmniTypographyFoundation.semiBold10Grey5B636C,
      );
}

class _StepCompletedIndicator extends StatelessWidget {
  const _StepCompletedIndicator(
      {required this.showSeparator,
      required this.sizeStep,
      required this.withSeparator,
      required this.heightSeparator});

  final bool showSeparator;
  final double sizeStep;
  final double withSeparator;
  final double heightSeparator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: showSeparator,
            child: Container(
              height: heightSeparator,
              color: ColorsOmni.denotativePositiveGreen,
              width: withSeparator,
            ),
          ),
          PrimarySvgIconAsset(
            data: PrimarySvgIconData(
              icon: OmniIcons.offerPurchase,
              width: sizeStep,
              height: sizeStep,
            ),
          )
        ],
      ),
    );
  }
}

class _StepUncompletedIndicator extends StatelessWidget {
  const _StepUncompletedIndicator(
      {required this.showSeparator,
      required this.sizeStep,
      required this.withSeparator,
      required this.heightSeparator});

  final bool showSeparator;
  final double sizeStep;
  final double withSeparator;
  final double heightSeparator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: showSeparator,
            child: Container(
              height: heightSeparator,
              width: withSeparator,
              color: ColorsOmni.whiteSmoke,
            ),
          ),
          Container(
            height: sizeStep,
            width: sizeStep,
            decoration: BoxDecoration(
              color: ColorsOmni.white,
              border: Border.all(color: ColorsOmni.whiteSmoke, width: 3),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),
    );
  }
}

/// Label prize indicator for last step
class _LabelPrize extends StatelessWidget {
  const _LabelPrize(
      {required this.completed,
      required this.textStyleStepCompleted,
      required this.textPrize,
      required this.textStyleStepUncompleted,
      required this.withSeparator,
      required this.heightSeparator});

  final bool completed;
  final String textPrize;
  final TextStyle textStyleStepCompleted;
  final TextStyle textStyleStepUncompleted;
  final double withSeparator;
  final double heightSeparator;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: heightSeparator,
          width: withSeparator,
          color: completed ? ColorsOmni.denotativePositiveGreen : ColorsOmni.whiteSmoke,
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: completed ? ColorsOmni.denotativePositiveGreen : ColorsOmni.white,
            borderRadius: BorderRadius.circular(8),
            border: completed ? null : Border.all(color: ColorsOmni.whiteSmoke, width: 1),
          ),
          child: AutoSizeText(
            textPrize,
            style: completed
                ? textStyleStepCompleted
                : textStyleStepUncompleted.copyWith(color: ColorsOmni.slateGrey),
          ),
        )
      ],
    );
  }
}
