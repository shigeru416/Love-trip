class PostsController < ApplicationController

	def new
		@post = Post.new
		@categories = Category.all
	end

	private
	def post_params
		params.require(:post).permit(:title, :category_id, :image, :content, :place, :tips, :course)
	end
end
