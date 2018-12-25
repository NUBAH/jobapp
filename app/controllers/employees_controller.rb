class EmployeesController < ApplicationController
	before_action :authenticate_employee!, except: [:index, :show]

	def index
		@employee = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
		# @age = (Date.today.strftime("%Y/%m/%d").to_i - @employee[:birthday].strftime("%Y/%m/%d").to_i) / 10000
		@chat = Chat.all
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
