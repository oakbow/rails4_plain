Rack::Timeout.timeout = ENV['WEB_TIMEOUT'] || 35 if Rails.env.production?
