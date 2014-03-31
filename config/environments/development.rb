Found::Application.configure do
  BetterErrors::Middleware
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false
  config.cache_store = :null_store, '127.0.0.1'
  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  #config.active_record.migration_error = :page_load
  #config.action_mailer.raise_delivery_errors = true
  #config.action_mailer.default :charset => "utf-8"
  #config.action_mailer.delivery_method = :smtp
  #config.action_mailer.smtp_settings = {

  config.action_mailer.default_url_options = { host: 'localhost:3000' }
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "smtp.gmail.com",
  :authentication       => "plain",
  :openssl_verify_mode => OpenSSL::SSL::VERIFY_NONE,
  :user_name            => "iwebsource1@gmail.com",
  :password             => "iwebAdmin3266"
}
  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end
