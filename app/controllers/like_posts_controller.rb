class LikePostsController < ApplicationController

  def create
    @likePost = LikePost.where(user_id: current_user.id, post_id: params[:post_id])

    if @likePost.length == 0
      like
      redirect_to posts_path
    else
      unlike
      redirect_to posts_path
    end
  end

  private

  def like
    LikePost.create(user_id: current_user.id , post_id: params[:post_id])
  end

  def unlike
    LikePost.destroy(@likePost[0].id)
  end

end
