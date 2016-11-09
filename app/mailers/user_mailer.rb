class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.notify_comment.subject
  #
default :from => "小農橋"

    def notify_comment(user, comment)
        @comment = comment
        mail(:to => user.email, :subject => "購買確認")
    end
end
