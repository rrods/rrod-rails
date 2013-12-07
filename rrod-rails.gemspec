# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rrod/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "rrod-rails"
  spec.version       = Rrod::Rails::VERSION
  spec.authors       = ["Rebecca Hunter","Adam Hunter"]
  spec.email         = ["hrmrebecca@gmail.com","adamhunter@me.com"]
  spec.description   = %q[Allows the use of rrod in a rails app]
  spec.summary       = %q[Provides hooks and methods to allow the use of rrod in a rails app]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rrod"
  spec.add_development_dependency "bundler",     "~> 1.3"
  spec.add_development_dependency "capybara",    "~> 2.2"
  spec.add_development_dependency "rails",       ">= 3.2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails", "~> 2.14"
end
