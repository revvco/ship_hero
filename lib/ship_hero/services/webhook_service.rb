#
# webhook_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class WebhookService < BaseService
      def get_webhooks
        client.query ShipHero::Queries::GetWebhooksQuery
      end

      def register_webhook(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Webhook" unless request.is_a?(ShipHero::Webhook)
        client.query ShipHero::Queries::RegisterWebhookQuery, { newWebhook: request }
      end

      def unregister_webhook(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Webhook" unless request.is_a?(ShipHero::Webhook)
        client.query ShipHero::Queries::UnregisterWebhookQuery, { webhook: request }
      end
    end
  end
end
