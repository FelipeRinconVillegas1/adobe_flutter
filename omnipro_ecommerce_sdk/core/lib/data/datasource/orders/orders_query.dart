///░█▀▀█ ░█─░█ ░█▀▀▀ ░█▀▀█ ░█──░█
///░█─░█ ░█─░█ ░█▀▀▀ ░█▄▄▀ ░█▄▄▄█
///─▀▀█▄ ─▀▄▄▀ ░█▄▄▄ ░█─░█ ──░█──

getOrdersQuery() => '''
query (\$pageSize: Int, \$currentPage: Int, \$sort: CustomerOrderSortInput, \$filter: CustomerOrdersFilterInput){
  customer {
    orders(
      pageSize: \$pageSize
      currentPage: \$currentPage
      sort: \$sort
      filter: \$filter
    ) {
      total_count
      page_info {
        current_page
        page_size
        total_pages
      }
      items {
        id
        order_number
        order_date
        status
        status_code
        edited_at
        shipping_address {
            firstname
            lastname
            region
            region_id
            country_code
            street    
            telephone
            postcode
            city
        }
        billing_address {
            firstname
            lastname
            region
            region_id
            country_code
            street    
            telephone
            postcode
            city
        }
        payment_methods {
            name
            type
        }
        items {
          product_name
          product_sku
          product_url_key
          product_sale_price {
            value
            currency
          }
          product_tax_price {
            value
            currency
          }
          quantity_ordered
          quantity_invoiced
          quantity_shipped
          eligible_for_return
          sales_unit_of_measure
          product_image
          oms_shipping_date
          oms_shipping_time
          oms_shipping_method {
            code
            name
          }
        }
        carrier
        shipping_method
        shipments {
          id
          number
          items {
            product_name
            quantity_shipped
          }
        }
        total {
          base_grand_total {
            value
            currency
          }
          grand_total {
            value
            currency
          }
          total_tax {
            value
            currency
          }
          subtotal {
            value
            currency
          }
          taxes {
            amount {
              value
              currency
            }
            title
            rate
          }
          total_shipping {
            value
          }
          shipping_handling {
            total_amount {
              value
              currency
            }
          }
          discounts {
            amount {
              value
              currency
            }
            label
          }
          refundable_fee {
            value
          }
        }
      }
    }
  }
}

''';
