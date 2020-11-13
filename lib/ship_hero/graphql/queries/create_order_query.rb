module ShipHero
  module Queries
    CreateOrderQuery = <<-GRAPHQL
      mutation createNewOrder($newOrder: CreateOrderInput!) {
        order_create(data: $newOrder) {
          request_id
          complexity
          order {
            id
            order_number
            shop_name
            fulfillment_status
            order_date
            total_tax
            subtotal
            total_discounts
            total_price
            custom_invoice_url
            account_id
            email
            profile
            packing_note
            required_ship_date
            shipping_address {
              first_name
              last_name
              company
              address1
              address2
              city
              state
              state_code
              zip
              country
              country_code
              email
              phone
            }
            line_items(first: 1) {
              edges {
                node {
                  id
                  sku
                  product_id
                  quantity
                  product_name
                  fulfillment_status
                  quantity_pending_fulfillment
                  quantity_allocated
                  backorder_quantity
                  eligible_for_return
                  customs_value
                  warehouse_id
                  locked_to_warehouse_id
                }
              }
            }
          }
        }
      }
    GRAPHQL
  end
end
