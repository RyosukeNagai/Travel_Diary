class Genre < ApplicationRecord
	has_many :preparations, dependent: :destroy
end
