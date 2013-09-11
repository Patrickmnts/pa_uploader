class UploadMailer < ActionMailer::Base
  default from: "patrick@example.com"

  def send_confirmation_email(upload)
    @user = upload.recipient_email
    @url  = upload.package
    mail(to: @user, subject: 'Wicked Cool Attachement')
  end

  # def read_confirmation_email(user)
  #   @user = upload.user_email
  #   @url  = 'http://example.com/login'
  #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end
end
