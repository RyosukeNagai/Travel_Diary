class Souvenir < ApplicationRecord
	belongs_to :shiori
	validates :name, presence: true
end
