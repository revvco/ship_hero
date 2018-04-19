#
# order_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class OrderService < BaseService
      def get_orders(request = ShipHero::Requests::GetOrders.new)
        raise Exceptions::ServiceException, "Must be a ShipHero::Requests::GetOrders" unless request.is_a?(ShipHero::Requests::GetOrders)
        get(Util::Config.get('endpoints.get_orders'), request, ShipHero::Responses::GetOrder)
      end

      def get_order(request = ShipHero::Requests::GetOrder.new)
        raise Exceptions::ServiceException, "Must be a ShipHero::Requests::GetOrder" unless request.is_a?(ShipHero::Requests::GetOrder)
        get(Util::Config.get('endpoints.get_order'), request, ShipHero::Responses::GetOrder)
      end
      
      def create_order(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Order" unless request.is_a?(ShipHero::Order)
        post(Util::Config.get('endpoints.create_order'), request, ShipHero::Responses::CreateOrder)
      end
      
      def update_order(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Order" unless request.is_a?(ShipHero::Order)
        post(Util::Config.get('endpoints.update_order'), request)
      end
      
      def create_order_history(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::OrderHistory" unless request.is_a?(ShipHero::OrderHistory)
        post(Util::Config.get('endpoints.create_order_history'), request)
      end
    end
  end
end
