import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/molecules/item_product/quantity_manager.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      CommonHeader(
                        param: CommonHeaderParam(
                          textLeft: 'Mi carrito',
                          textRight: 'Vaciar',
                          onTapIconLeft: () {},
                          onTapTextRight: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        child: CartItemList(
                          param: CartItemListParam(
                            titleList: 'Super 99',
                            itemCount: 3,
                            itemBuilder: (_, index) {
                              return CartItemWidget(
                                param: CartItemWidgetParam(
                                  imageURL:
                                      'https://mcprod.super99.com/media/catalog/product/1/0/10104956.png?format=jpeg',
                                  name: 'Colgate Crema Dental x3 Triple Acción 150 ml', sku: '10104956',
                                ),
                                showPriceCartItem: const ShowPriceCartItem(
                                  param: ShowPriceCartItemParam(
                                    totalPrice: '\$ 52,99',
                                    priceUnd: '\$ 10,99',
                                    unitOfMeasure: 'und',
                                    tax: "ITBMS \$ 0,00",
                                  ),
                                ),
                                manageQuantityCartItem: ManageQuantityCartItem(
                                  param: ManageQuantityItemCartParam(
                                    width: 120,
                                    minSalesQty: 1,
                                    quantity: 1,
                                    quantityText: '2',
                                    unitOfMeasure: 'Lb',
                                  ),
                                ),
                                cartItemDiscountBanner: index == 0
                                    ? CartItemDiscountBanner(
                                        param: CartItemDiscountBannerParam(
                                            discount: 'Se aplicó un descuento de',
                                            percentageOff: '5% por beneficios del programa de lealtad'),
                                      )
                                    : null,
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ProductList(
                        param: ProductListParam(
                          title: 'Productos similares',
                          subtitle: '',
                          direction: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (ctx, index) {
                            return ItemProduct(
                              param: ItemProductParam(
                                imageURL:
                                    'https://mcprod.super99.com/media/catalog/product/1/0/10104956.png?format=jpeg',
                                tagsProduct: {},
                                nameProductWithCategoryParam: NameProductWithCategoryParam(
                                  name: index == 0 ? 'Colgate Crema Dental x3 Triple Acción 150 ml' : 'Fruta monji',
                                  category: 'Fruta',
                                ),
                                managerQuantityItemCartParam: ManagerQuantityItemCartParam(
                                  quantity: 0,
                                  minSaleQty: 1,
                                  onIncreaseEndTimer: (qty) async{
                                    return true;
                                  },
                                  onDecreaseEndTimer: (qty) async{
                                    return true;
                                  },
                                ),
                                priceItemProductParam: PriceItemProductParam(
                                  price: '\$ 52,99',
                                  unitOfMeasure: '1Kg ',
                                ),
                              ),
                              style: ItemProductStyle.horizontalListStyle(),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 95,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsOmni.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.29),
                      blurRadius: 6,
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Subtotal', style: OmniTypographyFoundation.regular10Black161615),
                        Text('\$ 337,39', style: OmniTypographyFoundation.bold25Black161615),
                      ],
                    ),
                    PrimaryButton(
                      data: PrimaryButtonData(
                        width: 130,
                        height: 44,
                        onPressed: () {},
                        text: 'Ir a pagar',
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
