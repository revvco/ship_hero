module ShipHero
  module Responses
    class GetOrder < ShipHero::Base
      property :Message
      property :code
      property :orders
    end
  end
end
