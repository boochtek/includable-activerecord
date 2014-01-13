# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'includable/activerecord/version'

Gem::Specification.new do |spec|
  spec.name          = "includable-activerecord"
  spec.version       = Includable::ActiveRecord::VERSION
  spec.authors       = ["Craig Buchek"]
  spec.email         = ["craig@boochtek.com"]
  spec.summary       = %q{Build ActiveRecord models via module inclusion instead of class inheritance.}
  spec.description   = %q{Include ActiveRecord::Model in your model instead of inheriting from ActiveRecord::Base.}
  spec.homepage      = "https://github.com/boochtek/includable-activerecord"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('activerecord', '~> 4.0.0')
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
