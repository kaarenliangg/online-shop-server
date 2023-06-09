class UserMailer < ApplicationMailer
    
    def password_recovery(user, token)
        @user = user
        mail(to: @user.email, subject: 'Pocket Cart Password Recovery')
    end
    
end
