class UserMailer < ApplicationMailer
    def verification_email(user_id)
        @user = User.find(user_id)
        mail(to: @user.email, subject: 'Your post now needs to be validated')
    end
end
