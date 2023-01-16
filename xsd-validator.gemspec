
lib = File.expand_path("../lib", __FILE__)
vendor = File.expand_path("../vendor", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
$LOAD_PATH.unshift(vendor) unless $LOAD_PATH.include?(vendor)
require "xsd/validator/version"

Gem::Specification.new do |spec|
  spec.name          = "xsd-validator"
  spec.version       = Xsd::Validator::VERSION
  spec.authors       = ["David Escala"]
  spec.email         = ["descala@ingent.net"]

  spec.summary       = %q{Validates XML files with XSD..}
  spec.description   = %q{Validates XML files with XSD.}
  spec.homepage      = "https://github.com/descala/xsd-validator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "guard-rspec"

  spec.add_dependency "nokogiri"
end
