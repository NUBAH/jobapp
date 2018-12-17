class UserController < ApplicationController

	before_action :authenticate_user!, except: [:company, :show]

	def index
		@users = Emplooyee.user.all
	end

	def show
		@user = User.find(params[:id])
		# @chat = Chat.all
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def company
		@users = Company.user.where(status: "release").order('updated_at')
		@user = Company.user.find(params[:id])
	end

	private
	def user_params
		params.require(:user).permit(:userable, :admin, :email, :encrypted_password, :name, :name_kana, :tell)
	end
end
