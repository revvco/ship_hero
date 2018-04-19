module ShipHero
  class OrderHistory < ShipHero::Base
    property :order_id, coerce: Integer
    property :username, coerce: String, default: '-1'
    property :information, coerce: String
  end
end
