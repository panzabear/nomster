class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "emilio.prieto.torres@gmail.com",
      subject: "Comment Added to Your Place")
  end

end
