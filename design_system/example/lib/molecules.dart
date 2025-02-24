import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/molecules/item_product/item_product_loading.dart';
import 'package:design_system/molecules/item_product/quantity_manager.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class ExampleMolecules extends StatefulWidget {
  const ExampleMolecules({Key? key}) : super(key: key);

  @override
  State<ExampleMolecules> createState() => _ExampleMoleculesState();
}

class _ExampleMoleculesState extends State<ExampleMolecules> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Molecules',
                style: OmniTypographyFoundation.bold20,
              ),
              const SizedBox(height: 20),
              AddProductButton(
                  param: AddProductButtonParam(
                onPressed: () {
                  print('tap');
                },
                text: 'Agregar',
              )),
              YesNoQuestionRadioButton(
                textYes: 'Si',
                textNo: 'No',
                defaultValue: null,
                onChangeValue: (value) {
                  print(value);
                },
                title: '¿Deseas recibir notificaciones?',
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 30),
              const ItemProductLoading(),
              const ItemProductLoading(),
              const SizedBox(height: 8),
              ShowAddressSelected(
                ShowAddressSelectedParam(
                    title: 'Title',
                    description: 'Description de la direccion en este punto',
                    changeButtonData: PrimaryButtonData(text: 'Cambiar', onPressed: () {})),
              ),
              ItemProductOrder(
                  param: ItemProductOrderParam(
                mainImageUrl:
                    'https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/3/3/3337875546409_01.jpg',
                name: 'Basic snacks palomitas chile limon y aceite de oliva 20 ',
                price: '\$1481.60',
                currency: 'MXN (IVA incl.)',
                quantity: 'Cantidad: 2',
              )),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const ItemLoyaltyTransaction(
                  param: ItemLoyaltyTransactionParam(
                    date: '12/12/2020',
                    name: 'Compra en tienda',
                    spent: '100',
                    earned: '100',
                  ),
                ),
              ),
              ElevatedButton(
                child: const Text('showModalBottomSheet'),
                onPressed: () {
                  showModalBottomSheet<void>(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return ContentModalTipBottomSheet(
                        param: ContentModalTipBottomSheetParam(
                          title: 'Propina para el repartidor',
                          subtitle: 'Ingrese el monto de propina',
                          limitInput: 3,
                          hintText: '0.0',
                          symbolCurrency: '\$',
                          dataButtonCancel: PrimaryButtonData(
                            text: 'Cancelar',
                            onPressed: () {
                              print('no');
                            },
                          ),
                          dataButtonConfirm: PrimaryButtonData(
                            text: 'Enviar',
                            onPressed: () {
                              print('no');
                            },
                          ),
                          controller: TextEditingController(),
                        ),
                      );
                    },
                  );
                },
              ),
              const Divider(
                color: Color(0xFF707070),
                height: 12,
              ),
              SimpleItemList(
                style: SimpleItemListStyle.defaultStyle().copyWith(
                    paddingTitle: const EdgeInsets.only(bottom: 2, left: 8),
                    paddingSubTitle: const EdgeInsets.only(left: 8)),
                param: SimpleItemListParam(
                  title: 'Simple item list',
                  subTitle: 'SubTitle',
                  iconLeft: const Icon(
                    Icons.home_outlined,
                    size: 22,
                  ),
                  widgetRight: const Icon(Icons.menu_rounded),
                  widgetLeft: RadioButton<bool>(
                      style: RadioButtonStyle.denimBlue(), value: true, groupValue: true, onChanged: (_) {}),
                ),
              ),
              const Divider(
                color: Color(0xFF707070),
                height: 12,
              ),
              ItemAddress(
                param: ItemAddressParam(
                  onTapItem: () {},
                  onTapDelete: () {},
                  onTapEdit: () {},
                  onTapOptions: () {},
                  isSelected: true,
                  simpleItemListParam: SimpleItemListParam(
                    title: 'Title',
                    subTitle: 'SubTitle',
                    iconLeft: const Icon(
                      Icons.home_outlined,
                      size: 22,
                      color: ColorsOmni.grey707070,
                    ),
                  ),
                ),
              ),
              PriceItemProduct(
                param: PriceItemProductParam(
                    price: '\$ 50,00', discount: '\$ 15,00', unitOfMeasure: '1 Kg 1 Und', percentageOff: '50%'),
              ),
              HeroBanner(
                param: HeroBannerParam(
                  urlImage: 'https://i.imgur.com/HmdQ4k1.png',
                  title: 'Super frescos.',
                  description: 'Descubre las mejores ofertas de\nproductos frescos que tiene Super99.',
                  textButton: 'Ver mas',
                  onTapButton: () {
                    print('tap button');
                  },
                  onTapBanner: () {
                    print('tap image');
                  },
                ),
              ),
              const SizedBox(height: 22),
              MenuList(
                items: [
                  ItemMenuParam(name: 'Mis beneficios 99+', iconLeft: const Icon(Icons.home_outlined), onTap: () {}),
                  ItemMenuParam(name: 'Mis plan 99+', iconLeft: const Icon(Icons.home_outlined), onTap: () {}),
                  ItemMenuParam(name: 'Direcciones', iconLeft: const Icon(Icons.home_outlined), onTap: () {}),
                ],
                title: 'Mi cuenta',
              ),
              const SizedBox(height: 22),
              UserImageGreeting(
                param: UserImageGreetingParam(
                  nameUser: 'Samuel',
                  onTapImage: () {},
                ),
              ),
              ManagerQuantityItem(
                param: ManagerQuantityItemCartParam(
                  quantity: 1,
                  minSaleQty: 1,
                  onIncreaseEndTimer: (qty) async {
                    return true;
                  },
                  onDecreaseEndTimer: (qty) async {
                    return true;
                  },
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              ManageQuantityCartItem(
                param: ManageQuantityItemCartParam(
                  height: 40,
                  width: 100,
                  quantityText: '1',
                  unitOfMeasure: 'Lb',
                  minSalesQty: 1,
                  quantity: 1,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
