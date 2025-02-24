import 'package:design_system/foundations/export.dart';
import 'package:flutter/material.dart';

import 'data_models/flag_country_data.dart';
import 'icons/flag_country_asset.dart';

/// CountryCodeItem is a widget that show country code and country name in a list
class CountryCodeItem extends StatelessWidget {
  const CountryCodeItem({super.key, required this.param, this.style});

  final CountryCodeItemParam param;
  final CountryCodeItemStyle? style;

  CountryCodeItemStyle get _style => style ?? CountryCodeItemStyle.defaultStyle();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: ColorsOmni.white,
      child: InkWell(
        onTap: param.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FlagCountryAsset(
                          data: FlagCountryData(
                            codeFlag: param.code,
                            width: 25,
                          )
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Text(param.countryName,
                              style: param.isSelected ? _style.selectedTextStyle : _style.textStyle),
                        ),
                      ],
                    ),
                    Text(
                      "+ ${param.countryCode}",
                      textAlign: TextAlign.start,
                      style: param.isSelected ? _style.selectedTextStyle : _style.textStyleCountry,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 0,
              thickness: 0.5,
              color: ColorsOmni.greyImageBackground,
            )
          ],
        ),
      ),
    );
  }
}

class CountryCodeItemStyle {
  final TextStyle textStyle;
  final TextStyle textStyleCountry;
  final TextStyle selectedTextStyle;

  CountryCodeItemStyle.defaultStyle()
      : textStyle = OmniTypographyFoundation.light12SecondaryBlack000000,
        textStyleCountry = OmniTypographyFoundation.regular12SecondaryBlack000000,
        selectedTextStyle = OmniTypographyFoundation.semiBold16SecondaryBlack000000;

  CountryCodeItemStyle({required this.textStyle, required this.textStyleCountry, required this.selectedTextStyle});
}

class CountryCodeItemParam {
  final String countryCode;
  final String code;
  final String countryName;
  final bool isSelected;
  final Function()? onTap;

  CountryCodeItemParam(
      {required this.countryCode,
      required this.code,
      required this.countryName,
      required this.isSelected,
      required this.onTap});
}
