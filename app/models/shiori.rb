class Shiori < ApplicationRecord
	belongs_to :user
	has_many :schedules, dependent: :destroy
	has_many :preparations, dependent: :destroy
	has_many :souvenirs, dependent: :destroy
	attachment :shiori_image, destroy: false
	validates :title, presence: true

	default_scope -> { order(created_at: :desc) }
	def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
end
