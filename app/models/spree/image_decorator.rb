Spree::Image.class_eval do
  mount_uploader :attachment, CloudinaryUploader, :mount_on => :attachment_file_name

  # Get rid of the paperclip callbacks
  def save_attached_files; end
  def prepare_for_destroy; end
  def destroy_attached_files; end

  # For solidus front end compatibility
  def attachment(version=nil)
    if version.nil?
      super()
    else
      super().url(version)
    end
  end

  # Get rid of Paperclip validation
  def attachment_file_name
    "not_blank"
  end
end
