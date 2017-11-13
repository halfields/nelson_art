# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nelson_art/version"

Gem::Specification.new do |spec|
  spec.name          = "nelson_art"
  spec.version       = NelsonArt::VERSION
  spec.authors       = ["halfields"]
  spec.email         = ["hfields697@aol.com"]

  spec.summary       = %q{A guide to current and future exhibits at the Nelson Art Gallery, Kansas City, Missouri USA}
  spec.description   = %q{This is a ruby gem command line interface which gives menu of approx. 20 numbered menu choices, each choice representing an exhibit at the nelson. Enter the number and you are presented with additiona information on the exhibit.}
  spec.homepage      = "https://github.com/halfields/nelson_art"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org'"
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

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

   spec.add_dependency "nokogiri"
end
