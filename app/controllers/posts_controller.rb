class PostsController < ApplicationController
  def new
    @post = Post.new
  end
#below is the post request
  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
