class UploadMailer < ActionMailer::Base
  default from: "patrick@example.com"

  def send_confirmation_email(upload)
    @from = upload.user_email
    @to = upload.recipient_email
    @url  = root_url + upload.package
    mail(to: @to, subject: "#{@from} has sent you a wicked cool attachement")
  end

  def read_confirmation_email(upload)
    @attachemnt_name = upload.package
    @from = upload.user_email
    @to = upload.recipient_email
    mail(to: @from, subject: "#{@to} has viewed your attachment.")
  end
end
