class ChatsController < ApplicationController

	before_action :authenticate_company!
	before_action :authenticate_employee!

	def show
		@chat = Chat.find(params[:id])
		@chat
	end

	def new
		@chat = Chat.new
	end

	def create
		@chat = Chat.new
		@chat.save
	end

	def destroy
		chat = Chat.find(params[:id])
		chat.destroy
		redirect_to request.referrer
	end

	def update
	end

	private
	def chat_params
		params.require(:chat).permit(:company_id, :employee_id, :updated_at)
	end
end
