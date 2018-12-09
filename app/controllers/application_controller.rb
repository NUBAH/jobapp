class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameters_sanitizer.permit(:sign_up, keys: [:type, :admin])
	end
end
