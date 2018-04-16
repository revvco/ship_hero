require "ship_hero/version"
require 'rubygems'
require 'rest_client'
require 'json'
require 'hashie'
require 'openssl'
require 'base64'

module ShipHero
  autoload :Api, 'ship_hero/api'
  autoload :VERSION, 'ship_hero/version'

  # Models
  autoload :Base, 'ship_hero/models/base'
  autoload :Image, 'ship_hero/models/image'
  autoload :Product, 'ship_hero/models/product'
  autoload :ProductVariant, 'ship_hero/models/product_variant'

  module Services
    autoload :BaseService, 'ship_hero/services/base_service'
    autoload :OrderService, 'ship_hero/services/order_service'
    autoload :ProductService, 'ship_hero/services/product_service'
    autoload :ShipmentService, 'ship_hero/services/shipment_service'
    autoload :WebhookService, 'ship_hero/services/webhook_service'
  end

  module Responses
    autoload :General, 'ship_hero/models/responses/general'
  end

  module Util
    autoload :Config, 'ship_hero/util/config'
    autoload :Helpers, 'ship_hero/util/helpers'
  end

  module Exceptions
    autoload :ServiceException, 'ship_hero/exceptions/service_exception'
  end
end
