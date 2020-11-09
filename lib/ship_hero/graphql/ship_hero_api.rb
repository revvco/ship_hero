module ShipHeroApi
  # Configure GraphQL endpoint using the basic HTTP network adapter.
  HTTP = GraphQL::Client::HTTP.new("https://public-api.shiphero.com/graphql") do
    def headers(context)
      # Optionally set any HTTP headers
      # { "User-Agent": "My Client" }
    end
  end
end