# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "uber/version"

Gem::Specification.new do |spec|
  spec.name          = "uber-sdk"
  spec.version       = Uber::Version
  spec.authors       = ["Christopher EnyTC", "Dingding Ye"]
  spec.email         = ["chris@enytc.com", "yedingding@gmail.com"]
  spec.summary       = "Uber SDK for Ruby."
  spec.description   = "A Ruby SDK for the Uber API."
  spec.homepage      = "https://github.com/chrisenytc/uber-sdk"
  spec.license       = "MIT"

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.start_with?(".") || f =~ %r(^(spec|bin)/) }
  spec.require_paths = ["lib"]
  spec.required_rubygems_version = ">= 1.3.5"

  spec.add_development_dependency "bundler",                   "~> 1.5"
  spec.add_development_dependency "rake",                      "~> 0"
  spec.add_development_dependency "webmock",                   "~> 1.21"
  spec.add_development_dependency "rspec",                     "~> 3.3"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.6"

  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "json", "~> 1.8"
end
