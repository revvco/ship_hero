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
        client.query ShipHero::Queries::GetProductQuery, { sku: request.sku }
      end

      def get_products(request = ShipHero::Requests::GetProduct.new)
        raise Exceptions::ServiceException, "Must be a ShipHero::Requests::GetProduct" unless request.is_a?(ShipHero::Requests::GetProduct)
        response = client.query ShipHero::Queries::GetProductsQuery, { sku: request.sku }
        edges = response.data.products.data.edges

        products = []
        edges.each do |e|
          products << e.node
        end
        products
      end

      # def create_product(product)
      #   raise Exceptions::ServiceException, "Must be a ShipHero::Product" unless product.is_a?(ShipHero::Product)
      #   post(Util::Config.get('endpoints.base_url'), [product])
      # end
    end
  end
end
