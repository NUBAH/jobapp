module Accessible
	extend ActiveSupport::Concern
	included do
		before_action :check_user
	end

	protected
	def check_user
		if current_company
			flash.clear
			return
		elsif current_employee
			flash.clear
			return
		end
	end
end