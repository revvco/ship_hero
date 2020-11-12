#
# webhook_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class WebhookService < BaseService
      def get_webhooks
        response = client.query ShipHero::Responses::GetWebhooksQuery
        response.data
      end

      def register_webhook(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Webhook" unless request.is_a?(ShipHero::Webhook)
        response = client.query ShipHero::Responses::RegisterWebhookQuery, request
        response.data
      end

      def unregister_webhook(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Webhook" unless request.is_a?(ShipHero::Webhook)
        response = client.query ShipHero::Responses::UnregisterWebhookQuery, request
        response.data
      end
    end
  end
end
