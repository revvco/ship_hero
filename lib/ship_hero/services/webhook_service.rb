#
# webhook_service.rb
# ShipHero
#
# Copyright (c) 2017 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class WebhookService < BaseService
      def get_webhooks(request)
        get(Util::Config.get('endpoints.get_webhooks'), request)
      end

      def register_webhook(request)
        post(Util::Config.get('endpoints.register_webhook'), request)
      end

      def unregister_webhook(request)
        post(Util::Config.get('endpoints.unregister_webhook'), request)
      end
    end
  end
end
