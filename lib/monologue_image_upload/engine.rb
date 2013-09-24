require 'paperclip'
require 'jquery-rails'

module MonologueImageUpload
  class Engine < ::Rails::Engine
    isolate_namespace MonologueImageUpload

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false , :fixture => false
      g.fixture_replacement :factory_girl
      g.integration_tool :rspec
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
