module ShipHero
    module Queries
      GetWebhooksQuery = <<-GRAPHQL
        query {
          webhooks {
            request_id
            complexity
            data {
              pageInfo {
                hasNextPage
                hasPreviousPage
                startCursor
                endCursor
              }
              edges {
                node {
                  id
                  legacy_id
                  account_id
                  shop_name
                  name
                  url
                  source
                }
                cursor
              }
            }
          }
        }
      GRAPHQL
    end
  end
