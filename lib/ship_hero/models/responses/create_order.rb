module ShipHero
  module Responses
    class CreateOrder < ShipHero::Base
      property :order_id, coerce: String
      property :message, coerce: String
      property :response, coerce: ShipHero::Order
    end
  end
end
