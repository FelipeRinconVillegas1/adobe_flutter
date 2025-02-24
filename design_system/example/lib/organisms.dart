import 'package:design_system/atoms/data_models/item_category_data.dart';
import 'package:design_system/atoms/data_models/primary_button_data.dart';
import 'package:design_system/molecules/item_product/quantity_manager.dart';
import 'package:design_system/widgets_omni.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExampleOrganisms extends StatefulWidget {
  const ExampleOrganisms({Key? key}) : super(key: key);

  @override
  State<ExampleOrganisms> createState() => _ExampleOrganismsState();
}

class _ExampleOrganismsState extends State<ExampleOrganisms> {
  final ScrollController _sliverScrollController = ScrollController();
  var isPinned = false;

  final List<ItemCategoryData> categories = [
    ItemCategoryData(
      title: 'Super\nofertas',
      colorCategory: ColorsOmni.colorsCategories[0 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 0,
    ),
    ItemCategoryData(
      title: 'Accesorios\npara el hogar',
      colorCategory: ColorsOmni.colorsCategories[1 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 1,
    ),
    ItemCategoryData(
      title: 'Aseo del\nhogar',
      colorCategory: ColorsOmni.colorsCategories[2 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 2,
    ),
    ItemCategoryData(
      title: 'Bebes',
      colorCategory: ColorsOmni.colorsCategories[3 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 3,
    ),
    ItemCategoryData(
      title: 'Bebidas no alcholicas',
      colorCategory: ColorsOmni.colorsCategories[4 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 4,
    ),
    ItemCategoryData(
      title: 'Cafeteria',
      colorCategory: ColorsOmni.colorsCategories[5 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 5,
    ),
    ItemCategoryData(
      title: 'Despensa',
      colorCategory: ColorsOmni.colorsCategories[6 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 6,
    ),
    ItemCategoryData(
      title: 'Pizza',
      colorCategory: ColorsOmni.colorsCategories[7 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 7,
    ),
    ItemCategoryData(
      title: 'Sushi',
      colorCategory: ColorsOmni.colorsCategories[8 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 8,
    ),
    ItemCategoryData(
      title: 'Burger',
      colorCategory: ColorsOmni.colorsCategories[9 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 9,
    ),
    ItemCategoryData(
      title: 'Pizza',
      colorCategory: ColorsOmni.colorsCategories[10 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 10,
    ),
    ItemCategoryData(
      title: 'Sushi',
      colorCategory: ColorsOmni.colorsCategories[11 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 11,
    ),
    ItemCategoryData(
      title: 'Burger',
      colorCategory: ColorsOmni.colorsCategories[12 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 12,
    ),
    ItemCategoryData(
      title: 'Pizza',
      colorCategory: ColorsOmni.colorsCategories[13 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 13,
    ),
    ItemCategoryData(
      title: 'Sushi',
      colorCategory: ColorsOmni.colorsCategories[14 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 14,
    ),
    ItemCategoryData(
      title: 'Burger',
      colorCategory: ColorsOmni.colorsCategories[15 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 15,
    ),
    ItemCategoryData(
      title: 'Pizza',
      colorCategory: ColorsOmni.colorsCategories[16 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 16,
    ),
    ItemCategoryData(
      title: 'Sushi',
      colorCategory: ColorsOmni.colorsCategories[17 % ColorsOmni.colorsCategories.length],
      imageUrl: 'https://www.photos.com/images/burger.png',
      index: 17,
    ),
  ];

  @override
  void initState() {
    _sliverScrollController.addListener(() {
      if (!isPinned && _sliverScrollController.hasClients && _sliverScrollController.offset > kToolbarHeight) {
        setState(() {
          isPinned = true;
        });
      } else if (isPinned && _sliverScrollController.hasClients && _sliverScrollController.offset < kToolbarHeight) {
        setState(() {
          isPinned = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        controller: _sliverScrollController,
        shrinkWrap: true,
        slivers: [
          SliverPersistentHeader(
            delegate: SliverAppBarDelegate(
              minHeight: 70,
              maxHeight: 70,
              child: Container(
                color: Colors.white,
                child: HeaderHome(
                  typeShippingMethod: TypeShippingMethod.delivery,
                  quantityProductsInCart: 2,
                  text: 'Avenida landana 123 # 123-123 732842387',
                  onTap: () {
                    print('tap input');
                  }, icon: OmniIcons.addressesIcon,
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: SliverAppBarDelegate(
              minHeight: 75,
              maxHeight: 75,
              child: Container(
                  color: Colors.white,
                  child: Center(
                      child: HeaderSearch(
                    pinned: isPinned,
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    searchTextfieldData: SearchTextfieldData(
                      permissionRequiredText: "Permission required",
                      permissionRequiredDetailText: "Permission required detail",
                      notNowText: "Not now",
                      settingText: "Setting",
                      searchProductHintText: "¿Que deseas buscar hoy?",
                      isMicrophoneEnabled: false,
                      onScanRoute: () {
                        print('scan');
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
                    quantityProductsInCart: 1,
                  ))),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Text(
                'Organims',
                style: OmniTypographyFoundation.bold20,
              ),
              TabBarDefault(
                  canTapTabs: true,
                  initialIndex: 0,
                  onTap: (index) {},
                  tabBarDefaultItems: const [TabBarDefaultItem(text: "paso 1"), TabBarDefaultItem(text: "paso 2")]),
              HeaderList(
                  headerListData: HeaderListParam(
                textLeft: 'Categorías',
                textRight: 'Ver más',
                onTapTextRight: () {
                  showBottomSheetModalCategories(categories);
                },
              )),
              CategoryItems(
                  controller: ScrollController(),
                  categories: categories,
                  style: CategoryPageStyle.horizontalItemCircle()),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.9,
                child: EmptyState(
                  param: EmptyStateParam(
                    title: '!No hay nada aqui!',
                    subtitle: 'Parece que tu carrito esta vaico. Aniade lgiun producto para continuar.',
                    primaryButtonData: PrimaryButtonData(
                      text: 'Comprar ahora',
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: ProductList(
                  param: ProductListParam(
                    title: 'Productos',
                    subtitle: 'Ver todos',
                    direction: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return ItemProduct(
                        param: ItemProductParam(
                          imageURL: 'https://mcprod.super99.com/media/catalog/product/1/0/10104956.png?format=jpeg',
                          tagsProduct: {},
                          nameProductWithCategoryParam: NameProductWithCategoryParam(
                            name: index == 0 ? 'Colgate Crema Dental x3 Triple Acción 150 ml' : 'Fruta monji',
                            category: 'Fruta',
                          ),
                          managerQuantityItemCartParam: ManagerQuantityItemCartParam(
                            quantity: 0,
                            minSaleQty: 1,
                            onIncreaseEndTimer: (qty) async {
                              return true;
                            },
                            onDecreaseEndTimer: (qty) async {
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: ProductList(
                  param: ProductListParam(
                    title: 'Productos',
                    subtitle: 'Ver todos',
                    direction: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return const ItemProductoLoadingHorizontalList();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: DotsIndicatorList(
                  itemCount: 3,
                  itemBuilder: (ctx, index, _) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: HeroBanner(
                        param: HeroBannerParam(
                          onTapButton: () {},
                          textButton: 'Ver más',
                          urlImage: 'https://i.imgur.com/HmdQ4k1.png',
                          title: '¡Aprovecha!',
                          description: 'Lleva 2 y paga 1',
                          onTapBanner: () {},
                        ),
                      ),
                    );
                  },
                ),
              ),
              CartItemWidget(
                param: CartItemWidgetParam(
                    imageURL: 'https://mcprod.super99.com/media/catalog/product/1/0/10104956.png?format=jpeg',
                    name: 'Colgate Crema Dental x3 Triple Acción 150 ml',
                    sku: "12345"),
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
                    quantityText: '2',
                    unitOfMeasure: 'Lb',
                    minSalesQty: 1,
                    quantity: 1,
                  ),
                ),
                cartItemDiscountBanner: CartItemDiscountBanner(
                  param: CartItemDiscountBannerParam(
                      discount: 'Se aplicó un descuento de',
                      percentageOff: '5% por beneficios del programa de lealtad'),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(16),
                child: CartItemList(
                  param: CartItemListParam(
                    titleList: 'Super 99',
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return CartItemWidget(
                        param: CartItemWidgetParam(
                            imageURL: 'https://mcprod.super99.com/media/catalog/product/1/0/10104956.png?format=jpeg',
                            name: 'Colgate Crema Dental x3 Triple Acción 150 ml',
                            sku: "12345"),
                        showPriceCartItem: const ShowPriceCartItem(
                          param: ShowPriceCartItemParam(
                            totalPrice: '\$ 52,99',
                            priceUnd: '\$ 10,99',
                            tax: "ITBMS \$ 0,00",
                            unitOfMeasure: 'und',
                          ),
                        ),
                        manageQuantityCartItem: ManageQuantityCartItem(
                          param: ManageQuantityItemCartParam(
                              width: 120,
                              quantityText: '2',
                              unitOfMeasure: 'Lb',
                              minSalesQty: 1,
                              quantity: 1),
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
              const SizedBox(height: 100)
            ]),
          ),
        ],
      ),
    ));
  }

  void showBottomSheetModalCategories(List<ItemCategoryData> categories) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8,
          maxChildSize: 1,
          minChildSize: 0.25,
          builder: (BuildContext context, ScrollController scrollController) {
            return ContentModalDefaultBottomSheet(
                data: ContentModalDefaultBottomSheetData(
              widgetContent: CategoryItems(
                  controller: scrollController, categories: categories, style: CategoryPageStyle.verticalItemCircle()),
              headerHeight: 0.08,
              widgetHeader: HeaderList(
                  headerListStyle: HeaderListStyle.modalStyle(),
                  headerListData: HeaderListParam(
                    textLeft: 'Categorías',
                    iconBack: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: ColorsOmni.black,
                        size: 27,
                      ),
                    ),
                    textRight: 'Ver menos',
                    onTapTextRight: () {
                      Navigator.of(context).pop();
                    },
                  )),
              contentBackgroundColor: ColorsOmni.white,
            ));
          },
        );
      },
    );
  }
}
