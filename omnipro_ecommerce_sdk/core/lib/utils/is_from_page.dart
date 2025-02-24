enum IsFromPage {
  checkout("checkout_page"),
  home("home_page"),
  profile("profile_page"),
  scheduleOrder("schedule_order_page"),
  addFirstAddress("add_first_address_page"),
  cart("cart_page"),
  orderDetail("order_detail_page"),
  productDetail("product_detail_page"),
  myWishlist("my_wishlist_page"),
  productsList("products_list_page"),
  superOffers("super_offers_page"),
  myBenefits("my_benefits_page"),
  categoryDetail("category_detail_page"),
  myOrders("my_orders_page"),
  scanBarcode("scan_barcode_page"),
  chooseShippingMethod("choose_shipping_method_page"),
  writeAddressDelivery("write_address_delivery_page"),
  whatToDoWhenThereIsNoProduct("what_to_do_when_there_is_no_product_page"),
  myStoresFavoritePage("my_stores_favorite_page"),
  searchAllProducts("search_all_products_page"),
  search("search_page");

  const IsFromPage(this.namePage);

  final String namePage;
}
