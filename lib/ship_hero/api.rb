#
# api.rb
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  class Api
    attr_accessor :api_key

    def initialize(api_key)
      @api_key = api_key
    end

    # Product Services
    def get_products(request)
      ShipHero::Services::ProductService.new(@api_key).get_products(request)
    end
    def create_product(request)
      ShipHero::Services::ProductService.new(@api_key).create_product(request)
    end

    # Order Services
    def get_orders(request)
      ShipHero::Services::OrderService.new(@api_key).get_orders(request)
    end
    def get_order(request)
      ShipHero::Services::OrderService.new(@api_key).get_order(request)
    end
    def create_order(request)
      ShipHero::Services::OrderService.new(@api_key).create_order(request)
    end
    def update_order(request)
      ShipHero::Services::OrderService.new(@api_key).update_order(request)
    end
    def create_order_historye(request)
      ShipHero::Services::OrderService.new(@api_key).create_order_historye(request)
    end

    # Shipment Services
    def get_shipments(request)
      ShipHero::Services::ShipmentService.new(@api_key).get_shipments(request)
    end
    def create_shipment(request)
      ShipHero::Services::ShipmentService.new(@api_key).create_shipment(request)
    end

    # Webhook Services
    def get_webhooks
      ShipHero::Services::WebhookService.new(@api_key).get_webhooks
    end
    def register_webhook(request)
      ShipHero::Services::WebhookService.new(@api_key).register_webhook(request)
    end
    def unregister_webhook(request)
      ShipHero::Services::WebhookService.new(@api_key).unregister_webhook(request)
    end
  end
end
