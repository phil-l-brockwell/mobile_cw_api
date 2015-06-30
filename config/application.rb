require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module MobileCwApi
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.middleware.use Rack::Cors do
        allow do
            origins '*'
            resource 'api/jquery', :headers => :any, :methods => [:get, :post]
        end
    end
  end
end
