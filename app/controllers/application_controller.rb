class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?

  protected

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:full_name, :email, :password, :password_confirmation)
    end

end
end


#private

#	def current_user
#    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
#	end

#	helper_method :current_user
