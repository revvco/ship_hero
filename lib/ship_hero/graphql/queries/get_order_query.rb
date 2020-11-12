module ShipHero
  module Queries
    GetOrderQuery = <<-GRAPHQL
      query($id: Int) {
        order(id: $id) {
          data {
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
            custom_invoice_url
          }
        }
      }
    GRAPHQL
  end
end
