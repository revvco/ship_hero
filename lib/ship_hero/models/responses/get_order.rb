module ShipHero
  module Responses
    class GetOrder < ShipHero::Base
      property :Message
      property :message, coerce: String
      property :code
      property :orders
    end
  end
end
