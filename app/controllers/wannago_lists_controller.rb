class WannagoListsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		wannago_list = current_user.wannago_lists.new(post_id: @post.id)
		wannago_list.save
		redirect_back(fallback_location: root_path)
	end

	def destroy
		@post = Post.find(params[:post_id])
		wannago_list = current_user.wannago_lists.find_by(post_id: @post.id)
		wannago_list.destroy
    	redirect_back(fallback_location: root_path)
	end

end
