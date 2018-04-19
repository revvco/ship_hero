module ShipHero
  class Shipment < ShipHero::Base
    property :warehouse, coerce: String, required: true
    property :profile, coerce: String, required: true

    property :create_shipment, coerce: Integer, default: 0
    property :notify_customer_via_store, coerce: Integer, default: 0
  end
end
