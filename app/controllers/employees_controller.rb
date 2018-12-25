class EmployeesController < ApplicationController
	before_action :authenticate_employee!

	def index
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def emloyee_params
		params.require(:employee).permit(:name, :name_kana, :birthday, :introduction, :admin, :email, :password, :encrypted_password)
	end
end
