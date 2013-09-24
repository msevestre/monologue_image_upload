Rails.application.routes.draw do

  mount Monologue::Engine, :at => "/monologue"
  mount Ckeditor::Engine => '/ckeditor'
end
