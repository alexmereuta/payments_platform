require_relative "lib/customer_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "customer_engine"
  spec.version     = CustomerEngine::VERSION
  spec.authors     = ["“alexmereuta”"]
  spec.email       = ["amereuta@gmail.com"]
  spec.homepage    = "https://inpay.com"
  spec.summary     = "Summary of CustomerEngine."
  spec.description = "Description of CustomerEngine."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://inpay.com"
  spec.metadata["changelog_uri"] = "https://inpay.com"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.7", ">= 6.1.7.7"
end
