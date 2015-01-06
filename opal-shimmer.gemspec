# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opal/shimmer/version'

Gem::Specification.new do |spec|
  spec.name          = "opal-shimmer"
  spec.version       = Opal::Shimmer::VERSION
  spec.authors       = ["Jared White"]
  spec.email         = ["jared@ealchemylabs.com"]
  spec.description   = %q{An application state and configuration management library built with Opal}
  spec.summary       = spec.description
  spec.homepage      = "http://rubygems.org/gems/opal-shimmer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

	spec.add_dependency 'opal', '~> 0.7.0.beta1'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'opal-rspec', '~> 0.4.0.beta2'
end
