class UserMailer < ApplicationMailer
    default from: '99catsadmin@appacademy.io'

    def welcome_email(user)
        @user = user
        @url = 'http://localhost:3000/users'
        mail(to: @user.username, subject: 'Welcome to 99cats')
    end
end
