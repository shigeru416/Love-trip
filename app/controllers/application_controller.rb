class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
		if resource.is_a?(Admin)
      		admins_root_path
    	else
      		root_path
    	end
  	end

	def after_sign_out_path_for(resource)
		if resource == :admin
      		new_admin_session_path
    	else
      		root_path
    	end
	end

	protected
  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	end

end
