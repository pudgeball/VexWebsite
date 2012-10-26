class UserMailer < ActionMailer::Base
  default from: "nick@nickmcguire.com"
  
  #Welcoming Email for the troops
  def welcome_email(user)
    @user = user
    @url = "http://vex.herokuapp.com/users/sign_in"
    mail(to: user.email, subject: "Welcome to the new way to experience Vex")
  end
end