# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/jq/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-jq"
  spec.version       = Itamae::Plugin::Recipe::Jq::VERSION
  spec.authors       = ["hirogata"]
  spec.email         = ["oh1romichi@gmail.com"]

  spec.summary       = %q{Itamae plugin to install jq}
  spec.description   = %q{Itamae plugin to install jq}
  spec.homepage      = "http://example.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
