# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_cloudinary/version'

Gem::Specification.new do |spec|
  spec.name          = 'open_solidus_cloudinary'
  spec.version       = SolidusCloudinary::VERSION
  spec.authors       = ['Chloé Roger']
  spec.email         = ['berlimioz@gmail.com']
  spec.description   = %q{Solidus extension to use carrierwave/cloudinary instead of paperclip.}
  spec.summary       = %q{Most code is taken from https://github.com/chautoni/spree_cloudinary}
  spec.homepage      = 'https://github.com/Berlimioz'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.3.1'
  spec.add_development_dependency 'bundler', '>= 1.3'
  spec.add_development_dependency 'rake', '>= 11.1.2'

  spec.add_dependency 'solidus_core', '>= 1.3.0.rc1'
  spec.add_dependency 'carrierwave', '~> 0.11.2'
  spec.add_dependency 'cloudinary', '~> 1'
end
