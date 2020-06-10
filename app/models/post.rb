class Post < ApplicationRecord

	acts_as_taggable
	
	belongs_to :user
	belongs_to :category

	has_many :browsing_histories
	has_many :wannago_lists
	has_many :post_comments
	has_many :favorites
	
end
