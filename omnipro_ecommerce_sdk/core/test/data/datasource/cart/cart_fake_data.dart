import 'package:core/data/dto/customer_address_dto.fr.dart';

abstract class CartFakeData {
  static const itemsMock = [
    {
      "cart_item_uid": "1",
      "product": {
        "name": "Olivia 1/4 Zip Light Jacket",
        "sku": "WJ12",
        "image": {
          "label": "Bi Profenid 150 mg Oral 20 tabletas",
          "url": "https://mcstaging.fahorro.com.mx/media/catalog/product/7/5/7501165006362_1.png?format=jpeg"
        },
        "media_gallery": [],
        "small_image": {
          "label": "Bi Profenid 150 mg Oral 20 tabletas",
          "url": "https://mcstaging.fahorro.com.mx/media/catalog/product/7/5/7501165006362_1.png?format=jpeg"
        },
        "price_range": {
          "maximum_price": {
            "final_price": {"currency": "MXN", "value": 296},
            "regular_price": {"currency": "MXN", "value": 296},
            "discount": {"amount_off": 0}
          }
        }
      },
      "quantity": 4,
      "uid": "2",
      "prices": {
        "price": {"value": 77, "currency": "USD"}
      }
    },
    {
      "cart_item_uid": "2",
      "uid": "2",
      "product": {
        "name": "Circe Hooded Ice Fleece",
        "sku": "WH12",
        "image": {
          "label": "Bi Profenid 150 mg Oral 20 tabletas",
          "url": "https://mcstaging.fahorro.com.mx/media/catalog/product/7/5/7501165006362_1.png?format=jpeg"
        },
        "media_gallery": [],
        "small_image": {
          "label": "Bi Profenid 150 mg Oral 20 tabletas",
          "url": "https://mcstaging.fahorro.com.mx/media/catalog/product/7/5/7501165006362_1.png?format=jpeg"
        },
        "price_range": {
          "maximum_price": {
            "final_price": {"currency": "MXN", "value": 296},
            "regular_price": {"currency": "MXN", "value": 296},
            "discount": {"amount_off": 0}
          }
        }
      },
      "quantity": 15,
      "prices": {
        "price": {"value": 68, "currency": "USD"}
      }
    }
  ];

  static const cartSuccessFakeData = {
    "items": itemsMock,
    "prices": {
      "subtotal_excluding_tax": {"value": 1505, "currency": "MXN"},
      "discounts": [],
      "applied_taxes": [],
      "grand_total": {"value": 1505, "currency": "MXN"}
    },
    "available_payment_methods": [
      {"code": "checkmo", "title": "Check / Money order"}
    ],
    "selected_payment_method": {"code": "checkmo"},
    "billing_address": {
      "firstname": "John",
      "lastname": "Doe",
      "street": ["3320 N Crescent Dr", "Beverly Hills"],
      "category": "Home",
      "city": "Los Angeles",
      "region": {"code": "CA", "label": "California"},
      "postcode": "90210",
      "telephone": "123-456-0000",
      "country": {"code": "US", "label": "US"}
    },
    "shipping_addresses": [
      {
        "selected_shipping_method": {
          "carrier_code": "freeshipping",
          "method_code": "freeshipping",
          "carrier_title": "Entrega a Domicilio",
          "method_title": "Gratis",
          "amount": {"value": 0, "currency": "MXN"}
        },
        "firstname": "John",
        "lastname": "Doe",
        "street": ["3320 N Crescent Dr", "Beverly Hills"],
        "category": "Home",
        "city": "Los Angeles",
        "region": {"code": "CA", "label": "California"},
        "postcode": "90210",
        "telephone": "123-456-0000",
        "country": {"code": "US", "label": "US"},
        "available_shipping_methods": [
          {
            "carrier_code": "freeshipping",
            "carrier_title": "Entrega a Domicilio",
            "method_code": "freeshipping",
            "method_title": "Gratis",
            "amount": {"value": 0, "currency": "MXN"}
          }
        ]
      }
    ],
    "applied_coupons": [
      {"code": "Watch20"}
    ]
  };
  static const pricesMock = <String, dynamic>{
    "subtotal_excluding_tax": {"value": 1505, "currency": "MXN"},
    "discounts": [
      {
        "amount": {"value": 752.5, "currency": "MXN"},
        "label": "Descuento (Cupón 50% )"
      }
    ],
    "applied_taxes": [],
    "grand_total": {"value": 752.5, "currency": "MXN"}
  };

  static const cartSuccessFakeDataWithoutCoupon = {
    "items": itemsMock,
    "prices": pricesMock,
    "available_payment_methods": [
      {"code": "checkmo", "title": "Check / Money order"}
    ],
    "selected_payment_method": {"code": "checkmo"},
    "billing_address": {
      "firstname": "John",
      "lastname": "Doe",
      "street": ["3320 N Crescent Dr", "Beverly Hills"],
      "city": "Los Angeles",
      "region": {"code": "CA", "label": "California"},
      "postcode": "90210",
      "telephone": "123-456-0000",
      "country": {"code": "US", "label": "US"},
      "category": "Home"
    },
    "shipping_addresses": [
      {
        "selected_shipping_method": {
          "carrier_code": "freeshipping",
          "method_code": "freeshipping",
          "carrier_title": "Entrega a Domicilio",
          "method_title": "Gratis",
          "amount": {"value": 0, "currency": "MXN"}
        },
        "firstname": "John",
        "lastname": "Doe",
        "category": "Home",
        "street": ["3320 N Crescent Dr", "Beverly Hills"],
        "city": "Los Angeles",
        "region": {"code": "CA", "label": "California"},
        "postcode": "90210",
        "telephone": "123-456-0000",
        "country": {"code": "US", "label": "US"},
        "available_shipping_methods": [
          {
            "carrier_code": "freeshipping",
            "carrier_title": "Entrega a Domicilio",
            "method_code": "freeshipping",
            "method_title": "Gratis",
            "amount": {"value": 0, "currency": "MXN"}
          }
        ]
      }
    ],
    "applied_coupons": null
  };

  static const successfulAddCartData = <String, dynamic>{
    "addProductsToCart": {
      "cart": {"items": itemsMock, "prices": pricesMock},
      "user_errors": []
    }
  };

  static const successUpdateItemCart = <String, dynamic>{
    "updateCartItems": {
      "cart": {"items": itemsMock, "prices": pricesMock},
      "user_errors": []
    }
  };

  static const successRemoveItemFromCart = <String, dynamic>{
    "removeItemFromCart": {
      "cart": {"items": itemsMock, "prices": pricesMock},
      "user_errors": []
    }
  };

  static const wrongTypeAddCartData = <String, dynamic>{
    "addProductsToCart": {
      "cart": {
        "items": [
          {
            "product": {"name": "Olivia 1/4 Zip Light Jacket", "sku": "WJ12"},
            "quantity": 4,
            "prices": {
              "price": {
                "value": '77', //Wrong type
                "currency": "USD"
              }
            }
          },
          {
            "product": {"name": "Circe Hooded Ice Fleece", "sku": "WH12"},
            "quantity": 15,
            "prices": {
              "price": {"value": 68, "currency": "USD"}
            }
          }
        ],
        "prices": {
          "grand_total": {"value": 1062.4, "currency": "USD"}
        }
      },
      "user_errors": []
    }
  };

  static const wrongAddCartData = <String, dynamic>{
    "addProductsToCart": {
      "cart": {
        "prices!": {
          //Wrong key
          "grand_total": {"value": 1062.4, "currency": "USD"}
        }
      },
      "user_errors": []
    }
  };

  static const successFullGetCartData = <String, dynamic>{
    "cart": {
      "email": null,
      "billing_address": null,
      "shipping_addresses": [],
      "items": itemsMock,
      "available_payment_methods": [
        {"code": "checkmo", "title": "Check / Money order"},
        {"code": "paypal_express", "title": "PayPal"},
        {"code": "adyen_cc", "title": "Credit Card"}
      ],
      "selected_payment_method": {"code": "", "title": ""},
      "applied_coupons": null,
      "prices": pricesMock
    }
  };

  static const wrongTypeGetCartData = <String, dynamic>{
    "cart": {
      "email": null,
      "billing_address": null,
      "shipping_addresses": [],
      "items": [
        {
          "id": "100",
          "product": {"name": "Olivia 1/4 Zip Light Jacket", "sku": "WJ12"},
          "quantity": 1,
          "errors": null
        }
      ],
      "available_payment_methods": [
        {"code": "checkmo", "title": "Check / Money order"},
        {"code": "paypal_express", "title": "PayPal"},
        {"code": "adyen_cc", "title": "Credit Card"}
      ],
      "selected_payment_method": {"code": "", "title": ""},
      "applied_coupons": null,
      "prices": {
        "grand_total": {
          "value": '77', //Wrong type
          "currency": "USD"
        }
      }
    }
  };

  static const wrongGetCartData = <String, dynamic>{"cart": {}};

  static const successSetShippingAddressesOnCart = <String, dynamic>{
    "setShippingAddressesOnCart": {
      "cart": {
        "shipping_addresses": [
          {
            "firstname": "John",
            "lastname": "Doe",
            "street": ["3320 N Crescent Dr", "Beverly Hills"],
            "city": "Los Angeles",
            "region": {"code": "CA", "label": "California"},
            "telephone": "123-456-0000",
            "country": {"code": "US", "label": "US"},
            "available_shipping_methods": [
              {
                "carrier_code": "flatrate",
                "carrier_title": "Flat Rate",
                "method_code": "flatrate",
                "method_title": "Fixed",
                "amount": {"value": 0, "currency": "MXN"}
              },
              {
                "carrier_code": "tablerate",
                "carrier_title": "Best Way",
                "method_code": "bestway",
                "method_title": "Table Rate",
                "amount": {"value": 0, "currency": "MXN"}
              }
            ]
          }
        ]
      }
    }
  };
  static const successSetBillingAddressesOnCart = <String, dynamic>{
    "setBillingAddressOnCart": {
      "cart": {
        "billing_address": {
          "firstname": "John",
          "lastname": "Doe",
          "company": "Company Name",
          "street": ["64 Strawberry Dr", "Beverly Hills"],
          "city": "Los Angeles",
          "region": {"code": "CA", "label": "California"},
          "postcode": "90210",
          "telephone": "123-456-0000",
          "country": {"code": "US", "label": "US"}
        }
      }
    }
  };

  static const successSetShippingMethodsOnCart = <String, dynamic>{
    "setShippingMethodsOnCart": {
      "cart": {
        "shipping_addresses": [
          {
            "selected_shipping_method": {
              "carrier_code": "tablerate",
              "method_code": "bestway",
              "carrier_title": "Best Way",
              "method_title": "Table Rate"
            }
          }
        ]
      }
    }
  };

  static const customerFakeAddress = CustomerAddressDTO(
    id: 123,
    firstname: 'John',
    lastname: 'Doe',
    region: RegionDTO(
      region: 'California',
      code: 'CA',
      regionId: 456,
    ),
    countryCode: 'US',
    street: ['123 Main St'],
    telephone: '123-456-7890',
    postcode: '12345',
    city: 'Los Angeles',
    defaultShipping: true,
    defaultBilling: false,
  );
}
