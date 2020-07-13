class UserMailer < ApplicationMailer
    def afterpost
        @user = params[:user]
        mail(to: @user.email, subject: 'Your post now needs to be validated')
    end
end
