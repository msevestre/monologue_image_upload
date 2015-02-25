class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    :url  => "/#{config.upload_path}/pictures/:id/:style_:basename.:extension",
                    :path => ":rails_root/public/#{config.upload_path}/pictures/:id/:style_:basename.:extension",
                    :styles => { :content => '800>', :thumb => '118x100#' }

  validates_attachment :data,
                       :presence => true,
                       :content_type => {:content_type => /\Aimage\/.*\Z/},
                       :size => {:less_than => config.max_picture_size}

  def url_content
    url(:content)
  end
end
