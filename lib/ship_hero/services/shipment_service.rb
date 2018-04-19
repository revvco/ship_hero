#
# shipment_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class ShipmentService < BaseService
      def get_shipments(request = ShipHero::Requests::GetShipment.new)
        raise Exceptions::ServiceException, "Must be a ShipHero::Requests::GetShipment" unless request.is_a?(ShipHero::Requests::GetShipment)
        get(Util::Config.get('endpoints.get_shipments'), request)
      end

      def create_shipment(shipment)
        raise Exceptions::ServiceException, "Must be a ShipHero::Shipment" unless shipment.is_a?(ShipHero::Shipment)
        post(Util::Config.get('endpoints.create_shipment'), shipment)
      end
    end
  end
end
