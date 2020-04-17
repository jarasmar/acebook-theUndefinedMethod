# frozen_string_literal: true

class CommentsController < ApplicationController
  respond_to :js, :html, :json

  def create
    @comment = params['comment']['comment']
    Comment.create(
      comment: @comment, user_id: current_user.id,
      post_id: session[:post_id]
    )
    flash[:notice] = 'Comment was created successfully'
    redirect_to posts_path
  end

  def new
    session[:post_id] = params['post_id']
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment: params[:comment][:comment])
    redirect_to posts_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end
end
