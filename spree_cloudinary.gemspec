# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_cloudinary/version'

Gem::Specification.new do |spec|
  spec.name          = 'spree_cloudinary'
  spec.version       = SpreeCloudinary::VERSION
  spec.authors       = ['Thach Chau']
  spec.email         = ['rog.kane@gmail.com']
  spec.description   = %q{Spree extension to use carrierwave/cloudinary instead of paperclip.}
  spec.summary       = %q{Most code is taken from https://github.com/genuitytech/spree-carrierwave}
  spec.homepage      = 'https://github.com/chautoni'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.2'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.0.0'
  spec.add_development_dependency 'rspec', '~> 2.13.0'
  spec.add_development_dependency 'debugger', '~> 1.5.0'

  spec.add_dependency 'spree_core', '~> 1.3.0'
  spec.add_dependency 'carrierwave', '~> 0.8.0'
  spec.add_dependency 'cloudinary', '~> 1.0.0'
end
