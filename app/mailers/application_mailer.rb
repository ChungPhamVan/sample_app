class ApplicationMailer < ActionMailer::Base
  default from: ENV["EMAIL_NAME"]
  layout "mailer"
end
