class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_attached_file :data,
                    :url => "/#{config.upload_path}/attachments/:id/:filename",
                    :path => ":rails_root/public/#{config.upload_path}/attachments/:id/:filename"
  
  validates_attachment_size :data, :less_than => config.max_picture_size
  validates_attachment_presence :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
