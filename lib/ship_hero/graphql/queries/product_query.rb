module ShipHero
  module Queries
    ProductQuery = SWAPI::Client.parse <<-'GRAPHQL'
      query {
        product(sku: $sku) {
          data {
            price
            value
            name
            sku
          }
        }
      }
    GRAPHQL
  end
end
