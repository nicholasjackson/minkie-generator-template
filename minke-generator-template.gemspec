# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'generators/template/version'

Gem::Specification.new do |spec|
  spec.name          = "minke-generator-template"
  spec.version       = Minke::Generators::Template::VERSION
  spec.authors       = ["Nic Jackson"]
  spec.email         = ["nicjackson@notonthehighstreet.com"]

  spec.summary       = %q{Example template for Minke}
  spec.description   = %q{Example template for Minke}
  spec.homepage      = "https://github.com/nicholasjackson/minkie-generator-template"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # required so minke knows to load the gem which then registers itself
  spec.metadata = { 'entrypoint' => 'generators/template' }

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
