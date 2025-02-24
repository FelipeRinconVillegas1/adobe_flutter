// __  __ _    _ _______    _______ _____ ____  _   _
// |  \/  | |  | |__   __|/\|__   __|_   _/ __ \| \ | |
// | \  / | |  | |  | |  /  \  | |    | || |  | |  \| |
// | |\/| | |  | |  | | / /\ \ | |    | || |  | | . ` |
// | |  | | |__| |  | |/ ____ \| |   _| || |__| | |\  |
// |_|  |_|\____/   |_/_/    \_\_|  |_____\____/|_| \_|

import 'package:core/data/datasource/cart/cart_query.dart';

String reorderItemsMutation(String orderNumber) => '''
  mutation{
    reorderItems(orderNumber: "$orderNumber"){
      cart {
        ${queryGetCartInfo()}
      }
      userInputErrors{
        code
        message
        path
      }
    }
  }
''';


String getEditedOrdersByOrderIdQuery(int orderId) => '''
{
    edited_order(order_id: $orderId) {
        orders {
            order_id
            deleted_products {
                total_count
                $itemsEdited
            }
            edited_products {
                total_count
                $itemsEdited
            }
            added_products {
                total_count
                $itemsEdited
            }
        }
    }
}

''';


String itemsEdited = '''
items {
    product_name
    product_sku
    product_url_key
    product_image
    sales_unit_of_measure
    product_qty
    product_sale_price {
         currency
         value
    }
    product_sale_row_total {
         currency
         value
    }
    product_sale_tax_price {
         currency
         value
    }
}
''';
