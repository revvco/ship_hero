module ShipHero
  class Product < ShipHero::Base
    property :title, coerce: String, required: true
    property :brand, coerce: String
    property :sku, coerce: String, required: true
    property :type, coerce: String, default: :configurable
    property :warehouse, coerce: String
    property :tariff_code, coerce: String
    property :customs_description, coerce: String
    
    property :available_inventory, coerce: Integer

    property :price, coerce: Float
    property :customs_value, coerce: Float

    coerce_key :track_inventory, ->(v){ Util::Helpers.to_bool(v) }

    property :images, coerce: Array[Image], required: true
    property :variants, coerce: Array[ProductVariant]
  end
end
