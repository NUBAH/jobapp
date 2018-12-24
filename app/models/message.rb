class Message < ApplicationRecord
	belongs_to :chat
	belongs_to :company
	belongs_to :employee
end
