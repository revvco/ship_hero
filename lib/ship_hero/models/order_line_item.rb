module ShipHero
  class OrderLineItem < ShipHero::Base
    property :sku, coerce: String
    property :product_name, coerce: String
    property :title, coerce: String
    property :price, coerce: String
    property :barcode, coerce: String
    property :quantity, coerce: String
    property :partner_line_item_id, coerce: String
    property :product_id, coerce: String

    property :product_shots, coerce: Array[ShipHero::OrderLineItemProductShot]
  end
end
