module ShipHero
  class OrderShippingLines < ShipHero::Base
    property :title, coerce: String
    property :price, coerce: String
    property :method, coerce: String
    property :carrier, coerce: String
  end
end
