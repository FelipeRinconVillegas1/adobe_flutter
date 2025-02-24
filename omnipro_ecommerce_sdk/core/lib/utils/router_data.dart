import 'is_from_page.dart';

RouteData cartRoute = const RouteData(name: 'cart_route', path: 'cart_route');
RouteData scheduleYourOrderRoute =
    const RouteData(name: 'schedule_your_order_route', path: 'schedule_your_order_route');
RouteData makeOrderRoute = const RouteData(name: 'make_order_route', path: 'make_order_route');
RouteData checkoutProductsInCart =
    const RouteData(name: 'checkout_products_in_cart', path: 'checkout_products_in_cart');
RouteData listPaymentMethodsRoute = const RouteData(name: 'list_payment_methods', path: 'list_payment_methods');
RouteData addPaymentMethodRoute = const RouteData(name: 'add_payment_method', path: 'add_payment_method');
RouteData homeRoute = const RouteData(name: 'home_route', path: '/home_route');
RouteData superOffersRoute = const RouteData(name: 'super_offers_route', path: '/super_offers_route');
RouteData recurringOrdersFromDetailProductRoute = const RouteData(
    name: 'recurring_orders_from_detail_product_route', path: 'recurring_orders_from_detail_product_route');
RouteData accountRoute = const RouteData(name: 'account_route', path: '/account_route');

/// Loyalty ------------------------------------------------------
RouteData myBenefitsRoute = const RouteData(name: 'my_benefits', path: '/my_benefits');

/// Checkout -----------------------------------------------------
RouteData placeOrderPage = const RouteData(name: 'place_order_page', path: 'place_order_page');
RouteData processingPaymentPage = const RouteData(name: 'processing_payment_page', path: 'processing_payment_page');
RouteData successPaymentPage = const RouteData(name: 'success_payment_page', path: 'success_payment_page');

/// Auth ---------------------------------------------------------
RouteData authRoute = const RouteData(name: 'auth', path: '/');
RouteData loginRoute = const RouteData(name: 'login', path: 'login');
RouteData forgotPasswordRoute = const RouteData(name: 'forgot_password', path: 'forgot_password');
RouteData selectCountryCodeRoute = const RouteData(name: 'selectCountryCode', path: '/select_country_code');
RouteData formSignUpRoute = const RouteData(name: 'form_sign_up', path: 'form_sign_up');
RouteData validateEmailRouter = const RouteData(name: 'validate_email_route', path: 'validate_email_route');
RouteData addAddressFirstTimeRoute = const RouteData(name: 'add_address_first_time', path: '/add_address_first_time');
RouteData validateAccountWithMobileNumberRoute =
    const RouteData(name: 'validate_account_with_mobile_number', path: 'validate_account_with_mobile_number');
RouteData putCodeSent = const RouteData(name: 'put_code_sent', path: 'put_code_sent');
RouteData putCodeSentChangeEmail =
    const RouteData(name: 'put_code_sent_change_email', path: 'put_code_sent_change_email');
RouteData loadHtmlRoute = const RouteData(name: 'open_html', path: '/open_html');
RouteData openWebViewUrlRoute = const RouteData(name: 'open_web_view', path: '/open_web_view');
RouteData chooseShippingMethodRoute = const RouteData(name: 'choose_shipping_method', path: 'choose_shipping_method');
RouteData writeAddressDeliveryRoute = const RouteData(name: 'write_address_delivery', path: 'write_address_delivery');
RouteData chooseStorePickupRoute = const RouteData(name: 'choose_store_pickup', path: 'choose_store_pickup');
RouteData chooseStoreInMapPageRoute =
    const RouteData(name: 'choose_store_in_map_page', path: 'choose_store_in_map_page');
RouteData welcomeRoute = const RouteData(name: 'welcome', path: '/welcome');

/// ---------------------------------------------------------------

/// Profile
RouteData my99Code = const RouteData(name: 'my99Code', path: 'my99Code');
RouteData helpCenter = const RouteData(name: 'help_center', path: 'help_center');
RouteData hcQuestionDetailPage = const RouteData(name: 'help_center_question', path: 'help_center_question');
RouteData addressDetailRoute = const RouteData(name: 'detail_address', path: '/detail_address');
RouteData preAnimationForHomePageRoute =
    const RouteData(name: 'pre_animation_for_home_page ', path: '/pre_animation_for_home_page');
RouteData formAddressRoute = const RouteData(name: 'form_address', path: 'form_address');

RouteData myOrdersRoute = const RouteData(name: 'my_orders', path: '/my_orders');
RouteData orderDetailRoute = const RouteData(name: 'order_detail', path: 'order_detail');
RouteData ordersListRoute = const RouteData(name: 'orders_list', path: 'orders_list');
RouteData editProfileRoute = const RouteData(name: 'edit_profile', path: 'edit_profile');
RouteData productsInWishlistRoute = const RouteData(name: 'products_in_wishlist', path: 'products_in_wishlist');
RouteData myWishlistsRoute = const RouteData(name: 'my_wishlists', path: 'my_wishlists');
RouteData myStoresFavorite = const RouteData(name: 'my_stores_favorite', path: 'my_stores_favorite');
RouteData addWishlistRoute = const RouteData(name: 'add_wishlist', path: 'add_wishlist');
RouteData settingsAccountRoute = const RouteData(name: 'settings_account', path: 'settings_account');
RouteData deleteAccountRoute = const RouteData(name: 'delete_account', path: 'delete_account');
RouteData changePasswordRoute = const RouteData(name: 'change_password', path: 'change_password');
RouteData changeEmailRoute = const RouteData(name: 'change_email', path: 'change_email');
RouteData verifiedLocationPage = const RouteData(name: 'verified_location_page', path: '/verified_location_page');
RouteData redirectCallPage = const RouteData(name: 'open_wsp', path: '/open_wsp');
RouteData productsInOrderDetail = const RouteData(name: 'products_in_order_detail', path: 'products_in_order_detail');

/// ---------------------------------------------------------------

/// Store
RouteData categoryDetailRoute = const RouteData(name: 'category_detail', path: 'category_detail');
RouteData productsList = const RouteData(name: 'products_list', path: 'products_list');
RouteData productsListFromHome = const RouteData(name: 'products_list_from_home', path: 'products_list_from_home');
RouteData whatTodoWhenThereIsNotProductPageRoute = const RouteData(
    name: 'what_todo_when_there_is_not_product_route', path: 'what_todo_when_there_is_not_product_route');

/// Differentes navigations to product details
RouteData productDetailInCategoryRoute = const RouteData(name: 'product_detail_in_category', path: 'product_detail');
RouteData productDetailFromCartRoute = const RouteData(name: 'product_detail_from_cart', path: 'product_detail');
RouteData productDetailFromProductDetail =
    const RouteData(name: 'product_detail_from_product_detail', path: '/product_detail_from_product_detail');
RouteData productDetailFromSuperOffers =
    const RouteData(name: 'product_detail_from_super_offers', path: 'product_detail');
RouteData productDetailFromHome = const RouteData(name: 'product_detail_from_home', path: 'product_detail');
RouteData productDetailFromOrderDetail =
    const RouteData(name: 'product_detail_from_order_detail', path: 'product_detail');
RouteData productDetailFromMyBenefit = const RouteData(name: 'product_detail_from_my_benefit', path: 'product_detail');
RouteData productDetailFromProfile = const RouteData(name: 'product_detail_from_profile', path: 'product_detail');
RouteData productDetailFromSearch = const RouteData(name: 'product_detail_from_search', path: 'product_detail');
RouteData productDetailFromSearchAllProducts =
    const RouteData(name: 'product_detail_from_all_products', path: 'product_detail');
RouteData productDetailFromScanBarcode =
    const RouteData(name: 'product_detail_from_scan_barcode', path: 'product_detail');
RouteData productDetailInProductList = const RouteData(name: 'product_detail_in_product_list', path: 'product_detail');

RouteData productImageSliderFullScreenRoute =
    const RouteData(name: 'product_image_slider_fullscreen', path: '/product_image_slider_fullscreen/:initialPage');

RouteData searchProductRoute = const RouteData(name: 'search_product', path: 'search_product');
RouteData searchAllProductRoute = const RouteData(name: 'search_all_product_route', path: 'search_all_product_route');
RouteData scanBacodeProductRoute = const RouteData(name: 'scan_barcode_product', path: '/scan_barcode_product');

class RouteData {
  final String path;
  final String name;

  const RouteData({
    required this.path,
    required this.name,
  });
}

RouteData getRouteDataToProductDetailByFromPage(IsFromPage isFromPage) {
  switch (isFromPage) {
    case IsFromPage.categoryDetail:
      return productDetailInCategoryRoute;
    case IsFromPage.cart:
      return productDetailFromCartRoute;
    case IsFromPage.productDetail:
      return productDetailFromProductDetail;
    case IsFromPage.superOffers:
      return productDetailFromSuperOffers;
    case IsFromPage.home:
      return productDetailFromHome;
    case IsFromPage.myBenefits:
      return productDetailFromMyBenefit;
    case IsFromPage.profile:
      return productDetailFromProfile;
    case IsFromPage.search:
      return productDetailFromSearch;
    case IsFromPage.scanBarcode:
      return productDetailFromScanBarcode;
    case IsFromPage.productsList:
      return productDetailInProductList;
    case IsFromPage.myOrders:
      return productDetailFromOrderDetail;
    case IsFromPage.searchAllProducts:
      return productDetailFromSearchAllProducts;
    default:
      return homeRoute;
  }
}
