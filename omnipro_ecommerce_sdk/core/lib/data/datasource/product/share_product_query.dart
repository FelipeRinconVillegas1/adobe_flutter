String queryItemProduct() => '''
      id
      name
      sku
      min_sale_qty
      marca
      brand_name
      margin
      tax_amount{
        id
        value
      }
      ribbons {
        code
        color
        text
      }
      upc
      url_key
      description{
        html
      }
      short_description{
        html
      }
      image{
        label
        url
      }
      small_image{
        label
        url
      }
      media_gallery {
       url
        label
        position
        disabled
      }
      rating_summary
      review_count
      price_range {
        minimum_price {
          discount{
            amount_off
            percent_off
          }
          final_price{
            value
            currency
          }
          regular_price {
            value
            currency
          }
        }
        maximum_price {
          final_price {
            currency
            value
          }
          regular_price {
            currency
            value
          }
          discount {
            amount_off
            percent_off
          }
        }
      }
      sales_unit_of_measure
      stock_status
      tags
      type_id
      categories {
          uid
          name
          include_in_menu
          level
      }
''';
