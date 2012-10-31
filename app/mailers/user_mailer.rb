class UserMailer < ActionMailer::Base
  default from: "nick@nickmcguire.com"
  
  #A test email to see if everything is working
  def test(email)
    mail(to: email, subject: "Test")
  end
  
  #Welcoming Email for the troops
  def welcome_email(user)
    @user = user
    @url = "http://vex.herokuapp.com/users/sign_in"
    mail(to: user.email, subject: "Welcome to the new way to experience Vex")
  end
  
  #Added more teams to a user
  def added_teams(user)
    @user = user
    mail(to: user.email, subject: "More teams have been added to your account!")
  end
end