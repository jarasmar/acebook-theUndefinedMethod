class LikePostsController < ApplicationController

  # def create
  #   @likePost = LikePost.where(user_id: current_user.id, post_id: params[:post_id])

  #   if @likePost.length == 0
  #     like
  #     redirect_to posts_path
  #   else
  #     unlike
  #     redirect_to posts_path
  #   end
  # end

  def save_like
    @like = LikePost.new(post_id: params[:post_id], user_id: current_user.id) 
    @post_id = params[:post_id]
    respond_to do |format|
      format.js {
        if LikePost.where(post_id: params[:post_id], user_id: current_user.id).any?
          @success = false
        elsif @like.save
          @success = true
        else
          @success = false
        end

        render "posts/like_post"
        }
      end
  end

  # private

  # def like
  #   LikePost.create(user_id: current_user.id , post_id: params[:post_id])
  # end

  # def unlike
  #   LikePost.destroy(@likePost[0].id)
  # end

end
