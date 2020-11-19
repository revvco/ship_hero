#
# webhook_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class WebhookService < BaseService
      def get_webhooks
        response = client.query ShipHero::Queries::GetWebhooksQuery
        edges = response&.data&.webhooks&.data&.edges
        webhooks = []
        edges.each do |e|
          webhooks << ShipHero::Webhook.new(name: e.node.name, url: e.node.url, source: e.node.source)
        end
        ShipHero::Responses::GetWebhooks.new(webhooks: webhooks)
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
