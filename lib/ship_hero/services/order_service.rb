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
        get(Util::Config.get('endpoints.base_url'), request, ShipHero::Responses::GetOrder)
      end

      def get_order(request = ShipHero::Requests::GetOrder.new)
        raise Exceptions::ServiceException, "Must be a ShipHero::Requests::GetOrder" unless request.is_a?(ShipHero::Requests::GetOrder)
        response = client.query ShipHero::Queries::GetOrderQuery, { id: request.id }
        response.data
      end

      def create_order(request)
        #raise Exceptions::ServiceException, "Must be a ShipHero::Order" unless request.is_a?(ShipHero::Order)
        request = {
          "newOrder": {
              "order_number": "1111",
              "fulfillment_status": "pending",
              "order_date": "2020-11-17",
              "total_tax": "29.00",
              "subtotal": "150.00",
              "total_discounts": "20.00",
              "total_price": "159.00",
              "shipping_lines": {
                  "title": "UPS",
                  "price": "0.00",
                  "carrier": "UPS",
                  "method": "Ground"
              },
              "shipping_address": {
                  "first_name": "John",
                  "last_name": "Johnson",
                  "company": "The Johnson Co",
                  "address1": "2543 Duck St.",
                  "address2": "Apt. 2",
                  "city": "Oklahoma",
                  "state": "Oklahoma",
                  "state_code": "OK",
                  "zip": "73008",
                  "country": "US",
                  "country_code": "US",
                  "email": "johnjohnsonco@johnsonco.com",
                  "phone": "5555555555"
              },
              "billing_address": {
                  "first_name": "John",
                  "last_name": "Johnson",
                  "company": "The Johnson Co",
                  "address1": "2543 Duck St.",
                  "address2": "Apt. 2",
                  "city": "Oklahoma",
                  "state": "OK",
                  "state_code": "OK",
                  "zip": "73008",
                  "country": "US",
                  "country_code": "US",
                  "email": "johnjohnsonco@johnsonco.com",
                  "phone": "5555555555"
              },
              "line_items": [
                {
                  "sku": "ACESKU909",
                  "partner_line_item_id": "12282960909815",
                  "quantity": 2,
                  "price": "150.00",
                  "product_name": "Example Product",
                  "fulfillment_status": "pending",
                  "quantity_pending_fulfillment": 2
                }
              ],
              "required_ship_date": "2020-11-18"
          }
      }

        puts request
        query = client.parse ShipHero::Queries::CreateOrderQuery
        puts query
        response = client.query query, { newOrder: request }
        response.data
      end

      def update_order(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Order" unless request.is_a?(ShipHero::Order)
        response = client.query ShipHero::Queries::UpdateOrderQuery, { order: request }
        response.data
      end

      # def create_order_history(request)
      #   raise Exceptions::ServiceException, "Must be a ShipHero::OrderHistory" unless request.is_a?(ShipHero::OrderHistory)
      #   post(Util::Config.get('endpoints.base_url'), request)
      # end
    end
  end
end
