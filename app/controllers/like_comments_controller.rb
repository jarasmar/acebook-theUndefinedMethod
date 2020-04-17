# frozen_string_literal: true

class LikeCommentsController < ApplicationController
  def create
    @likeComment = LikeComment.where(user_id: current_user.id, comment_id: params[:comment_id])

    if @likeComment.empty?
      like
      redirect_to posts_path
    else
      unlike
      redirect_to posts_path
    end
  end

  private

  def like
    LikeComment.create(user_id: current_user.id, comment_id: params[:comment_id])
  end

  def unlike
    LikeComment.destroy(@likeComment[0].id)
  end
end
