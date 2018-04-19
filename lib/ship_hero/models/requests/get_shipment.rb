module ShipHero
  module Requests
    class GetShipment < ShipHero::Base
      property :page, coerce: String
      property :from, coerce: String
      property :to, coerce: String
      property :filter_on, coerce: String, default: 'order' # also allows `shipment`
    end
  end
end
