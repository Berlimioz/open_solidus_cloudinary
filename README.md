# Solidus Cloudinary

This gem is inspired from the Spree Cloudinary extension spree_cloudinary, and most of the code is from https://github.com/chautoni/spree_cloudinary.

This is a Solidus extension that uploads images to
[Cloudinary](https://cloudinary.com) via [CarrierWave](https://github.com/jnicklas/carrierwave) instead of
the default [Paperclip](https://github.com/thoughtbot/paperclip).

# Setup

Add `open_solidus_cloudinary` to your Gemfile and `bundle`.

# Configuration

Create an initializer file for Cloudinary (`config/initializers/solidus_cloudinary.rb`):

    # See the section titled 'Ruby On Rails integration' at http://cloudinary.com/documentation/rails_integration
    # for full options.

    Cloudinary.config do |config|
      config.cloud_name = 'sample'
      config.api_key = '874837483274837'
      config.api_secret = 'a676b67565c6767a6767d6767f676fe1'
      config.cdn_subdomain = true
    end

# Override default size
    # Create a model file named 'cloudinary_uploader_decorator.rb'

    CloudinaryUploader.class_eval do
      version :your_custom_type do
        process :resize_to_fit => [your_custom_size, your_custom_size]
      end
    end

