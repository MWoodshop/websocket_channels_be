require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module WebsocketChannelsBe
  class Application < Rails::Application
    config.load_defaults 7.0

    # Existing middleware configurations
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore

    # CORS configurations
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001'
        resource '*',
                 headers: :any,
                 methods: %i[get post put patch delete options head]
      end
    end

    # Rest of your configurations
  end
end
