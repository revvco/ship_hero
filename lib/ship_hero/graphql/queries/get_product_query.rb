module ShipHero
  module Queries
    GetProductQuery = <<-GRAPHQL
      query($sku: String) {
        product(sku: $sku) {
          data {
            id
            legacy_id
            account_id
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
