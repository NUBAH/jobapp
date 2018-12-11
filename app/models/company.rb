class Company < ApplicationRecord
	has_many :user, :as => :userable
end
