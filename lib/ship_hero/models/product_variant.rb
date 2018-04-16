module ShipHero
  class ProductVariant < ShipHero::Base
    property :sku, coerce: String, required: true
    property :parent_sku, coerce: String
    property :title, coerce: String, required: true
    property :available_inventory, coerce: Integer
    property :bin, coerce: String
    property :barcode, coerce: Integer
    property :price, coerce: Float, required: true
    property :value, coerce: Float
    property :customs_value, coerce: String
    property :customs_description, coerce: String
    property :height, coerce: String
    property :width, coerce: String
    property :length, coerce: String
    property :weight, coerce: String

    property :images, coerce: Array[Image], required: true
  end
end
