class CloudinaryUploader < CarrierWave::Uploader::Base
  include CarrierWave::Compatibility::Paperclip
  include Cloudinary::CarrierWave

  process :convert => 'png'
  # Spree looks in attachment#errors, so just delegate to model#errors
  delegate :errors, :to => :model

  # Match the path defined in Spree::Image
  def paperclip_path
    "assets/products/:id/:style/:basename.:extension"
  end

  # These are the versions defined in Spree::Image
  version :mini do
    process :resize_to_fit => [48, 48]
  end

  version :small do
    process :resize_to_fit => [100, 100]
  end

  version :product do
    process :resize_to_fit => [240, 240]
  end

  version :large do
    process :resize_to_fit => [600, 600]
  end

  def flush_errors;end
  def dirty?;end
  def save; end
  def queue_all_for_delete; end
  def flush_deletes; end
end
