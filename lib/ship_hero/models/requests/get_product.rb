module ShipHero
  module Requests
    class GetProduct < ShipHero::Base
      property :sku, coerce: String
      property :page, coerce: Integer
      property :count, coerce: Integer
    end
  end
end
