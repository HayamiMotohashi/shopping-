class ApplicationMailer < ActionMailer::Base
  default from:     "Shopping for everyone",
          bcc:      "sample+sent@gmail.com",
          reply_to: "sample+reply@gmail.com"
  layout 'mailer'
end
