class Company < ApplicationRecord
	has_many :user, :as => :userable
	enum status: {release: true, nonrelease: false}
end
