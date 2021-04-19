class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :travels, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :shioris, dependent: :destroy

  attachment :user_image,destroy: false

  validates :introduce,length: { maximum: 30}
  validates :name,
    presence: true,
    uniqueness: true,
    length: { maximum: 16 }
    VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
    validates :password, presence: true,
              format: { with: VALID_PASSWORD_REGEX,
               message: "は半角6~12文字英大文字・小文字・数字それぞれ１文字以上含む必要があります"}
end
