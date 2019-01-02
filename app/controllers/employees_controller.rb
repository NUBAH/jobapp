class EmployeesController < ApplicationController
	before_action :authenticate_employee!

	def index
		@employee = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
		# @age = (Date.today.strftime("%Y/%m/%d").to_i - @employee[:birthday].strftime("%Y/%m/%d").to_i) / 10000
		@chat = Chat.all
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update
		@employee = Employee.find(params[:id])
		if @employee.update(employee_params)
			redirect_to employee_path, notice: "情報を編集しました。"
		else
			render :edit
		end
	end

	def destroy
		employee = Employee.find(params[:id])
		employee.destroy
		redirect_to employee_path, notice: "情報を削除しました。"
	end

	private
	def emloyee_params
		params.require(:employee).permit(:name, :name_kana, :birthday, :introduction, :admin, :email, :password, :encrypted_password)
	end
end
