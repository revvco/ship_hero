#
# order_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class OrderService < BaseService
      def get_orders(request)
        get(Util::Config.get('endpoints.get_orders'), request)
      end

      def get_order(request)
        get(Util::Config.get('endpoints.get_order'), request)
      end
      
      def create_order(request)
        post(Util::Config.get('endpoints.create_order'), request)
      end
      
      def update_order(request)
        post(Util::Config.get('endpoints.update_order'), request)
      end
      
      def create_order_history(request)
        post(Util::Config.get('endpoints.create_order_history'), request)
      end
    end
  end
end
