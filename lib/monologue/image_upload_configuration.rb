module Monologue
  class ImageUploadConfiguration
    attr_accessor :max_attachment_size, :max_picture_size, :upload_path

    def initialize
      self.max_attachment_size = 100.megabytes
      self.max_picture_size = 2.megabytes
      self.upload_path = "monologue"
    end
  end
end