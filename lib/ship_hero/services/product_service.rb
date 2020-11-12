#
# product_service.rb
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class ProductService < BaseService
      def get_product(request = ShipHero::Requests::GetProduct.new)
        raise Exceptions::ServiceException, "Must be a ShipHero::Requests::GetProduct" unless request.is_a?(ShipHero::Requests::GetProduct)
        client.query ShipHero::Queries::ProductQuery, { sku: request.sku }
      end

      def create_product(product)
        raise Exceptions::ServiceException, "Must be a ShipHero::Product" unless product.is_a?(ShipHero::Product)
        post(Util::Config.get('endpoints.base_url'), [product])
      end
    end
  end
end
