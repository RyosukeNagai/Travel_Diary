class Travel < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	attachment :travel_image, destroy: false
	validates :title, presence: true
	validates :body, presence: true

	default_scope -> { order(created_at: :desc) }
	def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
