import 'package:design_system/atoms/buttons/primary_button.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/data_models/primary_textfield_data.dart';
import 'package:design_system/atoms/icons/primary_svg_icon_asset.dart';
import 'package:design_system/atoms/textfields/primary_textfield.dart';
import 'package:design_system/foundations/icons.dart';
import 'package:design_system/foundations/typo.dart';
import 'package:flutter/material.dart';
import 'package:core/domain/entity/card_item_entity.dart';
import 'package:flutter/services.dart';

class ItemSelectorPaymentCard extends StatefulWidget {
  final int index;
  final CardItemEntity cardItem;
  final int selected;
  final Function() onTapPay;
  final Function(int selected_) onChange;
  final String hintTextCvv;
  final String payText;

  const ItemSelectorPaymentCard(
      {super.key,
      required this.index,
      required this.cardItem,
      required this.selected,
      required this.hintTextCvv,
      required this.payText,
      required this.onTapPay,
      required this.onChange});

  @override
  State<ItemSelectorPaymentCard> createState() => _ItemSelectorPaymentCardState();
}

class _ItemSelectorPaymentCardState extends State<ItemSelectorPaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            Row(
              children: [
                Radio(
                  fillColor: MaterialStateColor.resolveWith((states) => const Color(0XFFB63728)),
                  value: widget.index,
                  groupValue: widget.selected,
                  onChanged: (value) {
                    widget.onChange(value!);
                  },
                ),
                const PrimarySvgIconAsset(
                    data: PrimarySvgIconData(
                  height: 20,
                  width: 30,
                  icon: OmniIcons.visa,
                )),
                const SizedBox(
                  width: 14,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.cardItem.type,
                      style: OmniTypographyFoundation.regular11Grey949091,
                    ),

                  ],
                ),
              ],
            ),
            Visibility(
                visible: widget.selected == widget.index,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 90,
                    ),
                    PrimaryTextField(
                      data: PrimaryTextfieldData(
                        height: 40,
                        width: 90,
                        hintText: widget.hintTextCvv,
                        obscureText: true,
                        textInputType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        maxLength: 5,
                        errorText: null,
                        onChanged: (p0) {},
                        textStyle: OmniTypographyFoundation.regular11Grey707070,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    PrimaryButton(
                      data: PrimaryButtonData(
                        activeTextStyle: OmniTypographyFoundation.semiBold16WhiteFFFFFF,
                        width: 160,
                        height: 35,
                        text: widget.payText,
                        onPressed: () {
                          widget.onTapPay();
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
