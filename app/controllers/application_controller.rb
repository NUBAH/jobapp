class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
		if current_company
			company_path(current_company)
		elsif current_employee
			root_path
		end
	end


	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :name_kana, :location, :image_id, :address, :post_code, :tell, :status, :admin])
	end

end
