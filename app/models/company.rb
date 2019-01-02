class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	       :recoverable, :rememberable, :validatable, :trackable
	has_many :chats
	has_many :messages
	enum status: {release: true, nonrelease: false}
	attachment :image
end
