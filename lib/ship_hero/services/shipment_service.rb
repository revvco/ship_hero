#
# shipment_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class ShipmentService < BaseService
      def get_shipments(request)
        get(Util::Config.get('endpoints.get_shipments'), request)
      end

      def create_shipment(request)
        post(Util::Config.get('endpoints.create_shipment'), request)
      end
    end
  end
end
