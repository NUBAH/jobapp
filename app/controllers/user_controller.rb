class UserController < ApplicationController

	before_action :authenticate_user!

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
	def user_params
		params.require(:user).permit(:type, :admin)
	end
end
