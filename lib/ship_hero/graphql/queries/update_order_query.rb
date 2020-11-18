module ShipHero
  module Queries
    UpdateOrderQuery = <<-GRAPHQL
    mutation {
      order_update(
        data: {
          order_id: "157814937"
          packing_note: "Some note for the Packer"
          profile: "default"
          priority_flag:true
          shipping_address: {
            address1: "2543 Duck St."
            address2: "Apt. 2"
            city: "Oklahoma"
            state: "OK"
            state_code: "OK"
            zip: "73008"
            country: "US"
            country_code: "US"
            email: "johnjohnsonco@johnsonco.com"
            phone: "5555555555"
          }
        }
      ) {
        request_id
        complexity
      }
    }
    GRAPHQL
  end
end
