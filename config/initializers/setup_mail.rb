ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => "mail.iwebdev.ca",
:port => 25,
:domain => "iwebdev.ca",
:user_name => "admin@iwebdev.ca",
:password => "Johnadam2",
:authentication => "plain",
:enable_starttls_auto => true,
:openssl_verify_mode  => "none"
}
