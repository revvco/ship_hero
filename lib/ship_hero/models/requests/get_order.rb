module ShipHero
  module Requests
    class GetOrder < ShipHero::Base
      property :id, coerce: String
      property :order_number, coerce: String
    end
  end
end
