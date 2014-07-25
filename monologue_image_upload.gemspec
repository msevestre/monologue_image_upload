$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "monologue_image_upload/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "monologue_image_upload"
  s.version     = MonologueImageUpload::VERSION
  s.authors     = ["Michael Sevestre"]
  s.email       = ["michael@design2code.ca"]
  s.homepage    = "https://github.com/msevestre/monologue_image_upload"
  s.summary     = "Extension for the gem Monologue that adds the upload image capability"
  s.description = "Extension for the gem Monologue that adds the upload image capability"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0.0", "< 4.2.0"
  #s.add_dependency "monologue", "~> 4.0"
  s.add_dependency "monologue"
  s.add_dependency "jquery-rails"
  s.add_dependency 'paperclip', '~> 3.5.4'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails', '2.14.0'
  s.add_development_dependency 'factory_girl_rails', '~> 4.2.0'
  s.add_development_dependency "database_cleaner", "1.0.1"
  s.add_development_dependency "capybara", "~> 1.1.4"
  s.add_development_dependency "capybara-webkit"

end
