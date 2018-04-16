#
# product_service.rb
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class ProductService < BaseService
      def get_products(request)
        get(Util::Config.get('endpoints.get_products'), request)
      end

      def create_product(product)
        raise Exceptions::ServiceException, "Must be a ShipHero::Product" unless product.is_a?(ShipHero::Product)
        post(Util::Config.get('endpoints.create_product'), [product])
      end
    end
  end
end
