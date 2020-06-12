class Post < ApplicationRecord

	acts_as_taggable
	
	has_many :post_images, dependent: :destroy
  	accepts_attachments_for :post_images, attachment: :image

	belongs_to :user
	belongs_to :category

	has_many :browsing_histories
	has_many :wannago_lists
	has_many :post_comments
	has_many :favorites
	
	def favorited_by?(user)
    	favorites.where(user_id: user.id).exists?
  	end

  	def wannago_listed_by?(user)
    	wannago_lists.where(user_id: user.id).exists?
  	end
end
