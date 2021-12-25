class CommentsController < ApplicationController
	# http_basic_authenticate_with :name => "admin", :password => "ndpassword", :only => :destroy
	def index
		@comments = Comment.all
		# @post = Post.find(params[:post_id])
		@posts = Post.find_by_id(params[:id])
	end
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:body).merge(user_id: current_user.id))
		redirect_to post_path(@post)
	end
  def destroy
    @post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:body).merge(user_id: current_user.id))
    @comment.destroy
    redirect_to post_path(@post)
  end
end
