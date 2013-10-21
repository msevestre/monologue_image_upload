module MonologueImageUpload
  class Engine < ::Rails::Engine
    isolate_namespace Monologue
    engine_name 'monologue_image_upload'

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false , :fixture => false
      g.fixture_replacement :factory_girl
      g.integration_tool :rspec
    end

    initializer "monologue.image_upload.preferences", :after => "monologue.configuration",:before => :load_config_initializers  do |app|
      app.config.monologue.add_class('image_upload')
      app.config.monologue.image_upload = Monologue::ImageUploadConfiguration.new
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end


      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
