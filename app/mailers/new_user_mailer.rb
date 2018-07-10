class NewUserMailer < ApplicationMailer
  default from: 'xainbutt28@gmail.com'

  def new_user_notifier user
    puts 'in mailer'
    @user = user
    mail to: 'xainbutt28@gmail.com', subject: 'New User Notification'
  end
end
