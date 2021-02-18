module ShipHero
  module Queries
    RegisterWebhookQuery = <<-GRAPHQL
    mutation($newWebhook: CreateWebhookInput!) {
      webhook_create(data: $newWebhook) {
        request_id
        webhook {
          name
          url
        }
      }
    }
    GRAPHQL
  end
end
