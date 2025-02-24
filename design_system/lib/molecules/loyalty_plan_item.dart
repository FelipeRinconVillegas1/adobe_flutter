import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

import 'loyalty_step_indicator.dart';

class LoyaltyPlanItem extends StatelessWidget {
  const LoyaltyPlanItem({super.key,
    required this.step,
    required this.totalStep,
    required this.textPrize,
    this.styleStepIndicator,
    required this.title,
    required this.description,
    this.titleStyle,
    this.descriptionStyle});

  final int step;
  final int totalStep;
  final String textPrize;
  final String title;
  final String description;
  final LoyaltyStepIndicatorStyle? styleStepIndicator;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
              child: Text(title, style: titleStyle ?? OmniTypographyFoundation.semiBold16Grey707070)),
          const SizedBox(height: 14),
          LoyaltyStepIndicator(
            step: step,
            totalStep: totalStep,
            textPrize: textPrize,
            style: styleStepIndicator,
          ),
          const SizedBox(height: 10),
          Flexible(
            child: Text(description,
                style: descriptionStyle ?? OmniTypographyFoundation.regular14Grey5B636C),
          ),
        ],
      ),
    );
  }
}
