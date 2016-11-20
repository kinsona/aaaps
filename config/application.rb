require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LadyProblems
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.action_dispatch.default_headers = {
        # 'Access-Control-Allow-Origin' => 'http://lady-problems-zoe.s3-website-us-east-1.amazonaws.com',
        # 'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
        # 'Access-Control-Allow-Headers' => "Content-Type";
        'Access-Control-Allow-Origin' => '*',
        'Access-Control-Allow-Methods' => 'POST, PUT, DELETE, GET, OPTIONS',
        'Access-Control-Request-Method' => '*',
        'Access-Control-Allow-Headers' => 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
      }
  end
end
