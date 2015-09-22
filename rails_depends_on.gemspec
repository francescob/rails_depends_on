# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_depends_on/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_depends_on"
  spec.version       = RailsDependsOn::VERSION
  spec.authors       = ["Francesco Brunetti"]
  spec.email         = ["francescob@gmail.com"]

  spec.summary       = "A jQuery plugin to facilitate the handling of form field dependencies."
  spec.homepage      = "http://Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'jquery-rails'
  spec.add_dependency 'coffee-rails'
  spec.add_dependency "railties", ">= 3.1"
end
