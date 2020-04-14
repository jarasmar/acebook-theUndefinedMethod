class LikePostsController < ApplicationController

  def create
    LikePost.create(user_id: current_user.id , post_id: params[:post_id])
    redirect_to posts_path
  end

  def destroy
    
  end

end
