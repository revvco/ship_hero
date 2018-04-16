module ShipHero
  class Image < ShipHero::Base
    property :src, coerce: String, required: true
    property :position, coerce: Integer
  end
end
