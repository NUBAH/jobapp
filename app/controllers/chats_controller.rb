class ChatsController < ApplicationController

	before_action :authenticate_user!

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
		params.require(:chat).permit(:user_id, :user_id, :updated_at)
	end
end
