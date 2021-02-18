#
# ShipHero
#
# Copyright (c) 2018 Kyle Schutt. All rights reserved.

module ShipHero
  module Services
    class BaseService
      attr_accessor :access_token
      attr_accessor :client

      def initialize(access_token)
        @access_token = access_token

        client = Graphlient::Client.new('https://public-api.shiphero.com/graphql',
          headers: {
            'Authorization' => "Bearer #{access_token}"
          }
        )

        @client = client
      end
    end
  end
end
