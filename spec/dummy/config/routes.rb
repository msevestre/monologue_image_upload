Rails.application.routes.draw do

  mount MonologueImageUpload::Engine => "/monologue_image_upload"
end
