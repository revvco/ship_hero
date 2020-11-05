
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ship_hero/version"

Gem::Specification.new do |spec|
  spec.name          = "ship_hero"
  spec.version       = ShipHero::VERSION
  spec.authors       = ["Kyle Schutt"]
  spec.email         = ["kyle@revv.co"]

  spec.summary       = 'ShipHero API gives you the ability to integrate ShipHero with your custom e-commerce solution.'
  spec.homepage      = "https://github.com/revvco/ship_hero"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("rest-client", '< 4.0', '>= 1.6.7')
  spec.add_runtime_dependency("json", '>= 1.8.1')
  spec.add_runtime_dependency('mime-types', '< 4.0', '>= 1.25.1')
  spec.add_runtime_dependency('hashie', '< 4.0', '>= 1.2.0')

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "graphql-client", "~> 0.16"
end
