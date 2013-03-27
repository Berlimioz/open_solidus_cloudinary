# Spree Cloudinary

This is a Spree extension that uploads images to
[Cloudinary](https://cloudinary.com) via [CarrierWave](https://github.com/jnicklas/carrierwave) instead of
the default [Paperclip](https://github.com/thoughtbot/paperclip).

## Why I made such this gem?

Providing an alternative free solution for cloud image storing

# Setup

Add `spree_cloudinary` to your Gemfile and `bundle`.

# Configuration

Create an initializer file for Cloudinary (`config/initializers/spree_cloudinary.rb`):

    # See the section titled 'Ruby On Rails integration' at http://cloudinary.com/documentation/rails_integration
    # for full options.

    Cloudinary.config do |config|
      config.cloud_name = 'sample'
      config.api_key = '874837483274837'
      config.api_secret = 'a676b67565c6767a6767d6767f676fe1'
      config.cdn_subdomain = true
    end

Copyright (c) 2013 ThachChau, released under the MIT License
