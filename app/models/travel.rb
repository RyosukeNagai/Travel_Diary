class Travel < ApplicationRecord
	belongs_to :user
	has_many :book_comments, dependent: :destroy
	has_many :schedules, dependent: :destroy
	has_many :preparations, dependent: :destroy
	has_many :souvenir, dependent: :destroy
	has_many :favorites, dependent: :destroy
	def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
