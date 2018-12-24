module Accessible
	extend ActiveSupport::Concern
	included do
		before_action :check_user
	end

	protected
	def check_user
		if current_company
			flash.clear
			redirect_to(authenticated_company_root_path) && return
		elsif current_employee
			flash.clear
			redirect_to(authenticated_employee_root_path) && return
		end
	end
end