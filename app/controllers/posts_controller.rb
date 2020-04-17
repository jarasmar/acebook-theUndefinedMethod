# frozen_string_literal: true

class PostsController < ApplicationController
  respond_to :js, :html, :json
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params.merge(user_id: current_user.id))
    redirect_to(posts_url)
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(message: params[:post][:message])
    redirect_to posts_path(@post)
  end

  def destroy
    @comments = Comment.where(post_id: params[:id])
    Comment.delete(@comments)

    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(posts_url)
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
