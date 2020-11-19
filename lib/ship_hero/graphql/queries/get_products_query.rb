module ShipHero
  module Queries
    GetProductsQuery = <<-GRAPHQL
      query {
        products {
          request_id
          complexity
          data {
            edges {
              node {
                id
                account_id
                name
                sku
                price
                created_at
                active
              }
            }
          }
        }
      }
    GRAPHQL
  end
end
