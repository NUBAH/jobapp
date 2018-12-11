class Employee < ApplicationRecord
	has_many :user, :as => :userable
end
