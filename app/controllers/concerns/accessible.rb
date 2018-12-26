module Accessible
	extend ActiveSupport::Concern
	included do
		before_action :check_user
	end

	protected
	def check_user
		if current_company
			flash.clear
			redirect_to company_path(current_company) && return
		elsif current_employee
			flash.clear
			redirect_to root_path && return
		end
	end
end