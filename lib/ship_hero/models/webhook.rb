module ShipHero
  class Webhook < ShipHero::Base
    property :name, coerce: String
    property :url, coerce: String
  end
end
