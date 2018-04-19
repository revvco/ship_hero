module ShipHero
  class OrderNote < ShipHero::Base
    property :name, coerce: String
    property :value, coerce: String
  end
end
