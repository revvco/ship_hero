#
# webhook_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class WebhookService < BaseService
      def get_webhooks()
        get(Util::Config.get('endpoints.base_url'), nil, ShipHero::Responses::GetWebhooks)
      end

      def register_webhook(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Webhook" unless request.is_a?(ShipHero::Webhook)
        post(Util::Config.get('endpoints.base_url'), request)
      end

      def unregister_webhook(request)
        raise Exceptions::ServiceException, "Must be a ShipHero::Webhook" unless request.is_a?(ShipHero::Webhook)
        post(Util::Config.get('endpoints.base_url'), request)
      end
    end
  end
end
