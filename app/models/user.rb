class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :favorites
  has_many :wannago_lists
  has_many :chats
  has_many :browsing_histories
  has_many :post_comments
  has_many :user_rooms

end
