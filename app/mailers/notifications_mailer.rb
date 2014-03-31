class NotificationsMailer < ActionMailer::Base

	default :from => "noreply@iwebdev.ca"
	default :to => "iwebsource@eastlink.ca"

	def new_message(message)
		@message = message
			mail(:subject => "#{message.subject}")
	end

end