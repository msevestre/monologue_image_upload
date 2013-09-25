class Ckeditor::Asset < ActiveRecord::Base
  include Ckeditor::Orm::ActiveRecord::AssetBase
  include Ckeditor::Backend::Paperclip

  def self.config
    Rails.application.config.monologue.image_upload
  end
end
