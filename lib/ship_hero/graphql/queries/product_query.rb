ProductQuery = SWAPI::Client.parse <<-'GRAPHQL'
  query {
    product(id: $id, sku: $sku) {
      data {
        price
        value
        name
        sku
      }
    }
  }
GRAPHQL