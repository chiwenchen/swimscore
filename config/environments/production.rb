Rails.application.configure do

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_assets = false

  config.assets.compress = true
  config.assets.js_compressor = :uglifier

  ActionMailer::Base.delivery_method = :smtp

  config.action_mailer.delivery_method = :smtp
  #use heroku var
  ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => ENV['MAILGUN_DOMAIN'], 
  :authentication => :plain
   }
  config.action_mailer.default_url_options = {:host => "http://serene-springs-6686.herokuapp.com"}

  config.assets.compile = false

  config.assets.digest = true

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify

  ENV["DATABASE_URL"] = "postgres://ptfhpnimrcglko:FZfNAfF0rx3EMqG47x7MpZX0r7@ec2-54-225-197-30.compute-1.amazonaws.com:5432/dbg33rnntmee5h"
end
