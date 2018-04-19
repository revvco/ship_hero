module ShipHero
  module Responses
    class GetWebhooks < ShipHero::Base
      property :code
      property :Message, coerce: String
      property :webhooks, coerce: Array[ShipHero::Webhook]
    end
  end
end
