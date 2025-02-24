import 'package:design_system/foundations/colors.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';

class SelectGroupButton extends StatelessWidget {
  const SelectGroupButton(
      {super.key,
      required this.options,
      required this.tittle,
      required this.onSelected,
      required this.currentIndex,
      this.colorSelected = ColorsOmni.primaryRed,
      this.colorUnselected = ColorsOmni.secondaryBlack,
      this.textStyleTittle,
      this.textStyleButton,
      this.spaceBetween = 8})
      : assert(currentIndex >= -1 && currentIndex < options.length);

  final List<SelectGroupButtonOption> options;
  final String tittle;
  final Function(int) onSelected;

  /// -1 is no selected option.
  final int currentIndex;
  final Color colorSelected;
  final Color colorUnselected;
  final TextStyle? textStyleTittle;
  final TextStyle? textStyleButton;
  final double spaceBetween;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tittle, style: textStyleTittle ?? OmniTypographyFoundation.medium14SecondaryBlack000000),
        const SizedBox(height: 8),
        SizedBox(
          height: 30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: options.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: spaceBetween),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(horizontal: 11),
                      side: BorderSide(
                        color: index == currentIndex ? colorSelected : colorUnselected,
                        width: 1,
                      )),
                  onPressed: () => onSelected(index),
                  child: Row(
                    children: [
                      if (options[index].icon != null) ...[
                        Icon(options[index].icon,
                            size: 16, color: index == currentIndex ? colorSelected : colorUnselected),
                        const SizedBox(width: 4),
                      ],
                      Text(options[index].label,
                          style: textStyleButton ??
                              OmniTypographyFoundation.bold14SecondaryBlack000000
                                  .copyWith(color: index == currentIndex ? colorSelected : colorUnselected)),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class SelectGroupButtonOption {
  final String label;
  final IconData? icon;

  SelectGroupButtonOption({required this.label, this.icon});
}
