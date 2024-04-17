require_relative "lib/payment_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "payment_engine"
  spec.version     = PaymentEngine::VERSION
  spec.authors     = ["“alexmereuta”"]
  spec.email       = ["amereuta@gmail.com"]
  spec.homepage    = "https://inpay.com"
  spec.summary     = "Summary of PaymentEngine."
  spec.description = "Description of PaymentEngine."
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
