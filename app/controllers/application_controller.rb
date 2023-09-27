class ApplicationController < ActionController::Base
    include Pagy::Backend
    Pagy::DEFAULT[:items] = 5
    
    def authorize_request(kind = nil)
 	   unless kind.include?(current_user.role)
 		redirect_to welcome_path, notice: "You are not authorized to perform this action"
 	   end	
	end

    before_action :configure_permitted_parameters, if: :devise_controller?
 	protected
 	def configure_permitted_parameters
 		devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
 		devise_parameter_sanitizer.permit(:account_update, keys: [:role])
 	end
 	def after_sign_in_path_for(resource)
 		#ruta a la que va cuando se logea el usuario
 		home_paht
	end



end
