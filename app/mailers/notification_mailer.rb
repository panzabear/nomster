class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "emiliotorres75@gmail.com",
      subject: "Comment Added to Your Place")
  end

end
