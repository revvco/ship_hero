module ShipHero
  module Requests
    class GetOrders < ShipHero::Base
      property :page, coerce: String
      property :from, coerce: String
      property :to, coerce: String
      property :all_orders, coerce: Integer
      property :warehouse_id, coerce: Integer
    end
  end
end
