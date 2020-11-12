#
# api.rb
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  class Api
    attr_accessor :username
    attr_accessor :password
    attr_accessor :access_token
    attr_accessor :refresh_token
    attr_accessor :expires_in

    def initialize(username, password)
      get_token(username, password)
    end

    def get_token(username, password)
      response = begin
        body = {
          "username": username,
          "password": password
        }
        response = RestClient.post("https://public-api.shiphero.com/auth/token", body.to_json, content_type: 'application/json')
      rescue => e
        e.try(:response)
      end
      body = JSON.parse(response.body)

      @access_token = body['access_token']
      @refresh_token = body['refresh_token']
      @expires_in = body['expires_in']
      response
    end

    # Product Services
    def get_product(request)
      ShipHero::Services::ProductService.new(@access_token).get_product(request)
    end

    # Order Services
    def get_order(request)
      ShipHero::Services::OrderService.new(@access_token).get_order(request)
    end
    def create_order(request)
      ShipHero::Services::OrderService.new(@access_token).create_order(request)
    end
    def update_order(request)
      ShipHero::Services::OrderService.new(@access_token).update_order(request)
    end

    # Webhook Services
    def get_webhooks
      ShipHero::Services::WebhookService.new(@access_token).get_webhooks
    end
    def register_webhook(request)
      ShipHero::Services::WebhookService.new(@access_token).register_webhook(request)
    end
    def unregister_webhook(request)
      ShipHero::Services::WebhookService.new(@access_token).unregister_webhook(request)
    end
  end
end
