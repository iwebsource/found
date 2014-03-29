 class RegistrationsController < Devise::RegistrationsController

   before_action :configure_permitted_parameters, if: :devise_controller?

   def configure_permitted_parameters
     devise_parameter_sanitizer.for(:sign_in){ |u| u.permit(:email, :password) }
     devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:full_name, :email, :password, :password_confirmation)}
     devise_parameter_sanitizer.for(:account_update){ |u| u.permit(:full_name, :email, :password, :password_confirmation) }
   end

   def update
     self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
     if resource.update_with_password(user_params)

      flash[:notice] = "Your Profile has been Updated"

       sign_in resource_name, resource, :bypass => true
       respond_with resource, :location => after_update_path_for(resource)
     else
       clean_up_passwords resource
       respond_with resource
     end
   end

   def user_params
     params.require(:user).permit(:full_name, :email, :password, :current_password, :password_confirmation)
   end
 end