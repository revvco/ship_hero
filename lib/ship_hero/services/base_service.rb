#
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class BaseService
      attr_accessor :access_token

      def initialize(access_token)
        @access_token = access_token
      end

      # Define request scoped helper method for making GraphQL queries.
      #
      # Examples
      #
      #   data = query(ViewerQuery)
      #   data.viewer.login #=> "josh"
      #
      # definition - A query or mutation operation ShipHeroApi::Client::Definition.
      #              Client.parse("query { version }") returns a definition.
      # variables - Optional set of variables to use during the operation.
      #             (default: {})
      #
      # Returns a structured query result or raises if the request failed.
      def query(definition, variables = {})
        # puts client_context
        response = ShipHeroApi::Client.query(definition, variables: variables, context: { access_token: @access_token })

        if response.errors.any?
          raise StandardError.new(response.errors[:data].join(", "))
        else
          response.data
        end
      end

      # Useful helper method for tracking GraphQL context data to pass
      # along to the network adapter.
      def client_context
        puts 'LOL client_context'
        puts @access_token
        { access_token: @access_token }
      end

      # def get(path, params = {}, response_type = ShipHero::Responses::General)
      #   url = URI::join(Util::Config.get('endpoints.base_url'), path).to_s
      #   url = build_url(url, params)
      #   response = RestClient.get(url, get_headers())
      #   begin
      #     response_type.new JSON.parse(response.body)
      #   rescue
      #     Hashie::Mash.new JSON.parse(response.body)
      #   end
      # end

      # def post(path, body = {}, params = {}, response_type = ShipHero::Responses::General)
      #   url = URI::join(Util::Config.get('endpoints.base_url'), path).to_s
      #   url = build_url(url, params)

      #   response = begin
      #     RestClient.post(url, body.to_h.to_json, get_headers())
      #   rescue => e
      #     e.try(:response)
      #   end

      #   begin
      #     response_type.new JSON.parse(response.body)
      #   rescue
      #     Hashie::Mash.new JSON.parse(response.body)
      #   end
      # end
    end
  end
end
