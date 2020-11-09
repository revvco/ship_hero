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
  autoload :Order, 'ship_hero/models/order'
  autoload :OrderHistory, 'ship_hero/models/order_history'
  autoload :OrderLineItem, 'ship_hero/models/order_line_item'
  autoload :OrderLineItemProductShot, 'ship_hero/models/order_line_item_product_shot'
  autoload :OrderNote, 'ship_hero/models/order_note'
  autoload :OrderShippingAddress, 'ship_hero/models/order_shipping_address'
  autoload :OrderShippingLines, 'ship_hero/models/order_shipping_lines'
  autoload :Webhook, 'ship_hero/models/webhook'

  module Services
    autoload :BaseService, 'ship_hero/services/base_service'
    autoload :OrderService, 'ship_hero/services/order_service'
    autoload :ProductService, 'ship_hero/services/product_service'
    autoload :ShipmentService, 'ship_hero/services/shipment_service'
    autoload :WebhookService, 'ship_hero/services/webhook_service'
  end

  module Responses
    autoload :General, 'ship_hero/models/responses/general'
    autoload :CreateOrder, 'ship_hero/models/responses/create_order'
    autoload :GetOrder, 'ship_hero/models/responses/get_order'
    autoload :GetWebhooks, 'ship_hero/models/responses/get_webhooks'
  end

  module Requests
    autoload :GetOrder, 'ship_hero/models/requests/get_order'
    autoload :GetOrders, 'ship_hero/models/requests/get_orders'
    autoload :GetProduct, 'ship_hero/models/requests/get_product'
    autoload :GetShipment, 'ship_hero/models/requests/get_shipment'
  end

  module Util
    autoload :Config, 'ship_hero/util/config'
    autoload :Helpers, 'ship_hero/util/helpers'
  end

  module Exceptions
    autoload :ServiceException, 'ship_hero/exceptions/service_exception'
  end

  module Graphql
    autoload :ShipHeroApi, 'ship_hero/graphql/ship_hero_api'
  end
end
