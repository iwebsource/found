class ContactMailer < ActionMailer::Base
 
default :from => "noreply@iwebdev.ca"
default :to => "iwebsource1@gmail.com"
 
def new_message(message)
@message = message
mail(:subject => "#{message.subject}")
end
 
end