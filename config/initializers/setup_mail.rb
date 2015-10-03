if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address:        'smtp.sendgrid.net',
    port:           '587',
    authentication: :plain,
    user_name:      'app42111889@heroku.com',
    password:       'et35kyqz0420',
    domain:         'heroku.com',
    enable_starttls_auto: true
  }
end