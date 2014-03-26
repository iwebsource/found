class WelcomeMailer < ActionMailer::Base

def registration_confirmation(user)

mail :to => user, :from => "admin@iwebdev.ca", :subject => "Welcome to Ruby Testing 101"

end
end