# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/froxlor/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-froxlor"
  spec.version       = Capistrano::Froxlor::VERSION
  spec.authors       = ["Pim Snel"]
  spec.email         = ["pim@lingewoud.nl"]
  spec.summary       = %q{Froxlor cli functionality for capistrano 3}
  spec.description   = %q{Add Froxlor cli functions to capistrano. This gem does not deploy Froxlor itself.}
  spec.homepage      = "https://github.com/mipmip/capistrano-froxlor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
