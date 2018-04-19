module ShipHero
  class Webhook < ShipHero::Base
    # Options: Inventory Update , Shipment Update , Order Canceled , Capture Payment , PO Update , Return Update 
    property :name, coerce: String
    property :url, coerce: String
    # Options: shopify , magento , bigcommerce , amazon , ebay , api (for custom integrations) , Manuel Order , woocommerce , mystoreno , walmart , etsy
    property :source, coerce: String
  end
end
