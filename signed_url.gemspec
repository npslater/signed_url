# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'signed_url/version'

Gem::Specification.new do |spec|
  spec.name          = "signed_url"
  spec.version       = SignedUrl::VERSION
  spec.authors       = ["Nate Slater"]
  spec.email         = ["nateslate@gmail.com"]
  spec.summary       = %q{Simple command line for creating a signed S3 url}
  spec.description   = ''
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency 'aws-sdk'
  spec.add_dependency 'thor'
end
