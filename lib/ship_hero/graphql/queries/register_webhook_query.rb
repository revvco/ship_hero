module ShipHero
  module Queries
    RegisterWebhookQuery = <<-GRAPHQL
    mutation($newWebhook: CreateWebhookInput!) {
      webhook_create(data: $newWebhook) {
        request_id
      }
    }
    GRAPHQL
  end
end
