module ShipHero
  module Queries
    ProductQuery = <<-GRAPHQL
      query($sku: String) {
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
