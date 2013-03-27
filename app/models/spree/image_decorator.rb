Spree::Image.class_eval do
  mount_uploader :attachment, CloudinaryUploader, :mount_on => :attachment_file_name

  # Get rid of the paperclip callbacks
  def save_attached_files; end
  def prepare_for_destroy; end
  def destroy_attached_files; end

  private
  # Get rid of Paperclip validation
  def attachment_file_name
    "not_blank"
  end
end
