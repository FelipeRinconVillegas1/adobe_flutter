import 'package:design_system/atoms/data_models/omni_image_network_data.dart';
import 'package:design_system/atoms/data_models/omni_asset_image.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/atoms/data_models/primary_image_data.dart';
import 'package:design_system/atoms/data_models/primary_svg_icon_data.dart';
import 'package:design_system/atoms/data_models/primary_textfield_data.dart';
import 'package:design_system/atoms/images/omni_asset_image.dart';
import 'package:design_system/atoms/images/omni_image_network.dart';
import 'package:design_system/foundations/images.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExampleAtoms extends StatefulWidget {
  const ExampleAtoms({super.key});

  @override
  State<ExampleAtoms> createState() => _AtomsExampleState();
}

class _AtomsExampleState extends State<ExampleAtoms> {
  bool showPassword = false;
  String? selectedItem;
  String? selectedItemLocation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Atoms Example',
                style: OmniTypographyFoundation.bold20,
              ),
              PrimaryButton(
                data: PrimaryButtonData(
                  onPressed: () {
                    print('tap');
                  },
                  text: 'Primary button',
                  height: 51,
                  width: 200,
                ),
              ),
              PrimaryButton(
                data: PrimaryButtonData(
                  text: 'Primary button disabled',
                  height: 51,
                ),
              ),
              PrimaryTextField(
                data: PrimaryTextfieldData(
                  width: 200,
                ),
              ),
              PrimaryTextField(
                  data: PrimaryTextfieldData(
                width: 200,
                label: "Error text example",
                isRequired: true,
                labelIcon: const Icon(Icons.account_circle_rounded),
                errorText: "*Debe ingresar un correo válido",
              )),
              PrimaryTextField(
                data: PrimaryTextfieldData(
                    width: 200,
                    label: "Error with icon leading",
                    labelIcon: const Icon(Icons.account_circle_rounded),
                    errorText: "Debe ingresar un correo válido",
                    iconLeadingError: const Icon(Icons.error, color: ColorsOmni.yellowFF9900, size: 14)),
              ),
              PrimaryTextField(
                data: PrimaryTextfieldData(
                    width: 200,
                    label: "Error with icon leading and info icon",
                    onTapLabelIconInfo: () {
                      print('tap icon info');
                    },
                    labelIconInfo: Icon(Icons.info_outline_rounded, color: ColorsOmni.secondaryBlack, size: 15.w),
                    labelIcon: const Icon(Icons.account_circle_rounded),
                    errorText: "Debe ingresar un correo válido",
                    iconLeadingError: const Icon(Icons.error, color: ColorsOmni.yellowFF9900, size: 14)),
              ),
              CedTextField(
                typeCed: " CED",
                data: PrimaryTextfieldData(
                    maxLength: 14,
                    focusNode: FocusNode(),
                    height: 40,
                    hintText: "Escribe tu cédula",
                    errorText: "*error input",
                    isRequired: true,
                    textInputType: TextInputType.text,
                    labelIcon: const Icon(Icons.badge_outlined, color: ColorsOmni.secondaryBlack, size: 18),
                    enable: true,
                    textEditingController: TextEditingController(),
                    labelRequired: "*",
                    label: "Tipo de documento"),
              ),
              MultilineTextField(
                data: PrimaryTextfieldData(
                    focusNode: FocusNode(),
                    labelIcon: const Icon(Icons.edit_note_sharp, color: ColorsOmni.secondaryBlack, size: 18),
                    textEditingController: TextEditingController(),
                    hintText: "Ej: Dejar en porteria",
                    labelRequired: "*",
                    label: "Solicitudes especiales"),
              ),
              PrimaryTextField(
                data: PrimaryTextfieldData(
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    child: PrimarySvgIconAsset(
                      data: PrimarySvgIconData(
                        icon: showPassword ? OmniIcons.eyeVisibilityOffNormal : OmniIcons.eyeVisibilityOnNormal,
                      ),
                    ),
                  ),
                  obscureText: !showPassword,
                ),
              ),
              const CircleButton(
                  param: CircleButtonParam(icon: Icon(Icons.add, color: ColorsOmni.primaryRed, size: 20))),
              const ChangeQuantityButton(
                type: ChangeQuantityButtonType.increase,
              ),
              SearchTextfieldWidget(
                data: SearchTextfieldData(
                  permissionRequiredText: "Permission required",
                  permissionRequiredDetailText: "Permission required detail",
                  notNowText: "Not now",
                  settingText: "Setting",
                  searchProductHintText: "¿Que deseas buscar hoy?",
                  isMicrophoneEnabled: false,
                  onScanRoute: () {
                    print('scan');
                  },
                  onMicResultsRoute: (result) {
                    print(result);
                  },
                  onTap: () {
                    print('tap');
                  },
                  textProductSearch: 'text product search',
                  onEventTap: () {
                    print('event tap');
                  },
                  readOnly: false,
                  focusNode: FocusNode(),
                ),
              ),
              SinglePanelExpanded(
                  titleExpanded: "Single panel expanded",
                  titleCollapsed: "Single panel collapsed",
                  initiallyExpanded: true,
                  leading: const Icon(Icons.expand, color: ColorsOmni.primaryRed, size: 18),
                  style: SinglePanelExpandedStyle.defaultStyle(),
                  children: [
                    Text(
                      'Is expanded',
                      style: OmniTypographyFoundation.bold20,
                    ),
                  ]),
              SecondaryButton(
                data: PrimaryButtonData(
                  text: 'Secondary Button',
                  onPressed: () {
                    showConfirmOmniDialog(
                      context: context,
                      title: 'Eliminar producto',
                      message: 'Estas seguro que desea elimar el producto del carrito?',
                      onConfirm: PrimaryButtonData(
                          text: 'No',
                          onPressed: () {
                            print('no');
                          }),
                      onCancel: PrimaryButtonData(
                          text: 'Si',
                          onPressed: () {
                            print('si');
                          }),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              CircleProfileImage(
                CircleProfileImageParam(
                  showActionCamera: true,
                  onTapCamera: () {
                    print('tap');
                  },
                ),
              ),
              const SizedBox(height: 20),
              DropdownSimple<String>(
                DropdownSimpleParam(
                  label: 'Drowndown with clear value selected',
                  dropdownSearchItemAsString: (value) => value,
                  labelRequired: "*",
                  isRequired: true,
                  activeClear: true,
                  onClear: () {
                    setState(() {
                      selectedItem = null;
                    });
                  },
                  items: ['Femenino', 'Masculino', 'No especificado'],
                  selectedItem: selectedItem,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      selectedItem = value;
                    });
                  },
                ),
                style: DropdownSimpleStyle<String>.defaultStyle()
                    .copyWith(constraintsItemsList: BoxConstraints(maxHeight: 100.h)),
              ),
              const SizedBox(height: 20),
              PrimaryTextField(
                  data: PrimaryTextfieldData(
                label: 'Label',
                onChanged: (value) {
                  print(value);
                },
                flexSuffixIcon: 3,
                suffixIconPadding: EdgeInsets.zero,
                labelIcon: const Icon(Icons.account_circle_outlined, color: ColorsOmni.secondaryBlack, size: 18),
                suffixIcon: InkWell(
                  onTap: () {
                    print('tap');
                  },
                  child: Text('Actualizar', style: OmniTypographyFoundation.regular14PrimaryRedFF001D),
                ),
              )),
              const SizedBox(height: 10),
              const LabelExclusive(
                label: 'Exclusivo en Linea',
              ),
              const SizedBox(height: 10),
              OmniAssetImage(
                data: OmniAssetImageData(path: OmniIcons.exclusiveOnline.pathAsset, widthImage: 100, heightImage: 30),
              ),
              Row(
                children: [
                  Expanded(
                    child: PrimaryButton(
                      data: PrimaryButtonData(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        activeColor: ColorsOmni.lightBlue,
                        disabledColor: ColorsOmni.whiteSmoke,
                        activeTextStyle: OmniTypographyFoundation.semiBold16PrimaryRedFF001D,
                        radius: 23,
                        onPressed: () {
                          print('tap');
                        },
                        text: 'Ingresar monedero',
                        height: 48,
                        width: 200,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Stack(children: [
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PrimaryButton(
                            data: PrimaryButtonData(
                              padding: const EdgeInsets.symmetric(horizontal: 0),
                              activeColor: ColorsOmni.lightBlue,
                              disabledColor: ColorsOmni.whiteSmoke,
                              activeTextStyle: OmniTypographyFoundation.semiBold16PrimaryRedFF001D,
                              disableTextStyle: OmniTypographyFoundation.semiBold16Grey949091,
                              radius: 23,
                              isDisabled: true,
                              onPressed: () {
                                print('tap');
                              },
                              text: 'Obtener mondero',
                              height: 48,
                              width: 200,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: PrimaryImageAsset(
                          data: PrimaryImageData(
                            width: 26.w,
                            height: 26.w,
                            image: ImagesOmni.idDialogAlertPng, //TODO CAMBIAR
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              const OmniImageNetwork(
                data: OmniImageNetworkData(
                  placeholder: SizedBox.shrink(),
                  errorWidget: SizedBox.shrink(),
                  url: 'https://fdabucket.s3.amazonaws.com/icons/real_money.svg',
                  heightImage: 22,
                  widthImage: 22,
                ),
              ),
              const OmniImageNetwork(
                data: OmniImageNetworkData(
                  errorWidget: SizedBox.shrink(),
                  placeholder: SizedBox.shrink(),
                  url: 'https://fdabucket.s3.amazonaws.com/icons/free_product.svg',
                  heightImage: 22,
                  widthImage: 22,
                ),
              ),
              const OmniImageNetwork(
                data: OmniImageNetworkData(
                  errorWidget: SizedBox.shrink(),
                  placeholder: SizedBox.shrink(),
                  url: 'https://fdabucket.s3.amazonaws.com/icons/wallet.svg',
                  heightImage: 22,
                  widthImage: 22,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: ItemChipTip(
                      iconLeading: Icons.home_outlined,
                      text: 'casa',
                      isActive: true,
                      style: ItemChipTipStyle.addressStyle(),
                    ),
                  ),
                  Expanded(
                    child: ItemChipTip(
                      iconLeading: Icons.business_center_outlined,
                      text: 'oficina',
                      isActive: false,
                      style: ItemChipTipStyle.addressStyle(),
                    ),
                  ),
                  Expanded(
                    child: ItemChipTip(
                      iconLeading: Icons.favorite_border_outlined,
                      text: 'pareja',
                      isActive: false,
                      style: ItemChipTipStyle.addressStyle(),
                    ),
                  ),
                  Expanded(
                    child: ItemChipTip(
                      iconLeading: Icons.push_pin_outlined,
                      text: 'otro',
                      isActive: false,
                      style: ItemChipTipStyle.addressStyle(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: ItemChipTip(
                      iconLeading: Icons.radio_button_checked_outlined,
                      iconLeadingUnchecked: Icons.radio_button_unchecked_outlined,
                      text: 'Si',
                      isActive: true,
                      style: ItemChipTipStyle.registerStyle(),
                    ),
                  ),
                  Expanded(
                    child: ItemChipTip(
                      iconLeading: Icons.radio_button_checked_outlined,
                      iconLeadingUnchecked: Icons.radio_button_unchecked_outlined,
                      text: 'No',
                      isActive: false,
                      style: ItemChipTipStyle.registerStyle(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Wrap(
                spacing: 8.w,
                children: const [
                  ItemChipTip(
                    text: '\$0',
                    isActive: true,
                  ),
                  ItemChipTip(
                    text: '\$10',
                    isActive: false,
                  ),
                  ItemChipTip(
                    text: '\$15',
                    isActive: false,
                  ),
                  ItemChipTip(
                    text: '\$30',
                    isActive: false,
                  ),
                  ItemChipTip(
                    text: 'Otro',
                    isActive: false,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioButton<bool>(
                              style: RadioButtonStyle.denimBlue(), value: true, groupValue: true, onChanged: (_) {}),
                          Flexible(
                              child: Text('Entrega lo mas pronto posible',
                                  style: OmniTypographyFoundation.regular14Grey7070)),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RadioButton<bool>(
                              style: RadioButtonStyle.denimBlue(), value: false, groupValue: true, onChanged: (_) {}),
                          Flexible(
                            child:
                                Text('Programar horario de entrega', style: OmniTypographyFoundation.regular14Grey7070),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const RibbonsProduct(
                    text: 'PROMO',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  RibbonsProduct(
                    text: 'SUGERIDO',
                    style: RibbonsProductStyle.defaultStyle().copyWith(backgroundColor: ColorsOmni.orangeFB8500),
                  ),
                ],
              ),
              NameProductWithCategory(
                param: NameProductWithCategoryParam(
                  name: 'Manzana Fuji',
                  category: 'Fruta',
                ),
              ),
              const SizedBox(height: 12),
              ItemMenu(
                param: ItemMenuParam(
                  name: 'Direcciones222',
                  iconLeft: const PrimarySvgIconAsset(
                      data: PrimarySvgIconData(icon: OmniIcons.iconHomeOutline, color: ColorsOmni.black161615)),
                  onTap: () {
                    print('tap');
                  },
                ),
              ),
              const SizedBox(height: 22),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileItemCard(
                    name: "",
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_2,
                        size: 44,
                        color: ColorsOmni.redCD202E,
                      ),
                    ),
                  ),
                  ProfileItemCard(
                    name: "",
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_2,
                        size: 44,
                      ),
                    ),
                  ),
                  ProfileItemCard(
                    name: "",
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person_2,
                        size: 44,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 44),
            ],
          ),
        ),
      ),
    );
  }
}
