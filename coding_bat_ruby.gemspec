# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coding_bat_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'coding_bat_ruby'
  spec.version       = CodingBatRuby::VERSION
  spec.authors       = ['archana srivastava']
  spec.email         = ['srivastavaarchana0991@gmail.com']

  spec.summary       = 'Ruby Code Practice.'
  spec.description   = 'Ruby Code Practice.'
  spec.license       = 'MIT'

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
