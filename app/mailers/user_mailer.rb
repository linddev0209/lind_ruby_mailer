class UserMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
        format.html {render 'user_mailer/welcome_email'}
        end
    end
end
