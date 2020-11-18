module ShipHero
  module Queries
    UpdateOrderQuery = <<-GRAPHQL
    mutation($order: UpdateOrderInput!) {
      order_update(data: $order) {
        request_id
        order {
          id
          order_number
          partner_order_id
          shop_name
          fulfillment_status
          order_date
          total_tax
          subtotal
          total_discounts
          total_price
          auto_print_return_label
          email
          profile
          gift_note
          packing_note
          required_ship_date
        }
      }
    }
    GRAPHQL
  end
end
