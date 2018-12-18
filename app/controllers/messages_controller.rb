class MessagesController < ApplicationController
	def index
		message = Message.all
	end

	def new
		@message = Message.new
	end

	def create
		@message = message.new
		@message.save
	end

	private
	def message_params
		params.require(:message).permit(:user_id, :chat_id, :body, :updated_at)
	end
end
