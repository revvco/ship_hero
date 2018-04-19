module ShipHero
  class OrderLineItemProductShot < ShipHero::Base
    property :url, coerce: String
    property :sort, coerce: String
  end
end
