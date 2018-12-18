class UserController < ApplicationController

	before_action :authenticate_user!, except: [:company, :show]

	def index
		@users = Emplooyee.user.all
	end

	def show
		@user = Employee.user.find(params[:id])
		@age = (Date.today.strftime("%Y%m%d").to_i - @user[:birthday].strftime("%Y%m%d").to_i) / 10000
		# @chat = Chat.all
	end

	def edit
		@user = User.find(parmas[:id])
	end

	def update
		@user = User.find(parmas[:id])
		if user.update(user_params)
			if @user.userable == company
				redirect_to user_path, notice: "情報を編集しました！"
			elsif @user.userable == employee
				redirect_to company_show_path, notice: "情報を編集しました！"
			elsif @user.admin == true
				redirect_to root_path
			end
		else
			render :edit
		end
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to root_path
	end

	def company
		@users = Company.user.where(status: "release").order('updated_at')
		@user = Company.user.find(params[:id])
	end

	def company_show
		@user = Company.user.find(params[:id])
	end

	private
	def user_params
		params.require(:user).permit(:userable, :admin, :email, :encrypted_password, :name, :name_kana, :tell)
	end
end
