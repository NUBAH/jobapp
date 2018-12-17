class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if :devise_controller?

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:userable, :admin, :email, :encrypted_password, :name, :name_kana, :tell])
	end
end
end
