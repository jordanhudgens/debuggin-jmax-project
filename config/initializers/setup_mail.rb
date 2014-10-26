ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = { 
  :address                => 'smtp.sendgrid.net',
  :port                   => '587',
  :authentication         => :plain,
  :user_name              => 'app31014060@heroku.com',
  :password               => 'erpgznhn',
  :domain                 => 'heroku.com',
  :enable_starttls_auto   => true
}