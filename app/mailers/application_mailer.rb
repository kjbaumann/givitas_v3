class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"

  def reservation_email
    @user = params[:user]
    @url  = ''
    mail(to: @user.email, subject: 'Thank you for booking an event!')
  end
end
