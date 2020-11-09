#
# config.rb
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  module Util
    class Config

      # Return a hash of configuration strings
      # @return [Hash] - hash of configuration properties
      @props = {
        # REST endpoints
        :endpoints => {
          :base_url                       => 'https://public-api.shiphero.com/graphql',

          # products
          :get_products     => 'get-product',
          :create_product   => 'product-creation',

          # orders
          :get_orders             => 'get-orders',
          :get_order              => 'get-order',
          :create_order           => 'order-creation',
          :update_order           => 'order-update',
          :create_order_history   => 'order-history-creation',

          # shipments
          :get_shipments          => 'get-shipments',
          :create_shipment        => 'shipment-creation',

          # webhooks
          :get_webhooks         => 'get-webhooks',
          :register_webhook     => 'register-webhook',
          :unregister_webhook   => 'unregister-webhook',
        },

        # Authorization related configuration options
        :auth => {
          :api_key                       => ''
        },

        # Errors to be returned for various exceptions
        :errors => {
          :api_key_missing      => 'api_key required either explicitly or in configuration.',
        }
      }

      class << self
        attr_accessor :props

        def configure
          yield props if block_given?
        end

        # Get a configuration property given a specified location, example usage: Config::get('auth.token_endpoint')
        # @param [String] index - location of the property to obtain
        # @return [String]
        def get(index)
          properties = index.split('.')
          get_value(properties, props)
        end

        private

        # Navigate through a config array looking for a particular index
        # @param [Array] index The index sequence we are navigating down
        # @param [Hash, String] value The portion of the config array to process
        # @return [String]
        def get_value(index, value)
          index = index.is_a?(Array) ? index : [index]
          key = index.shift.to_sym
          value.is_a?(Hash) and value[key] and value[key].is_a?(Hash) ?
          get_value(index, value[key]) :
          value[key]
        end
      end
    end
  end
end
