module ShipHero
  module Queries
    UnregisterWebhookQuery = <<-GRAPHQL
      mutation($webhook: DeleteWebhookInput!) {
        webhook_delete(data: $webhook) {
          request_id
        }
      }
    GRAPHQL
  end
end
