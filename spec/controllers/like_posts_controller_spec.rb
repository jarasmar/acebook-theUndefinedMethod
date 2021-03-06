# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LikePostsController, type: :controller do
  before(:each) do
    @user = User.create { :user }
    controller.stub(:authenticate_user!).and_return(true)
    sign_in @user
    @post = Post.create(user_id: @user.id, message: 'Hello, world!')
    @like = LikePost.create(user_id: @user.id, post_id: @post.id)
  end

  describe 'POST /' do
    it 'responds with 200' do
      expect(response).to have_http_status(200)
    end

    it 'creates a like' do
      expect(@like).to be_a_new(LikePost)
    end

    it 'deletes a like' do
      @like.destroy
      expect(@like).not_to be(LikePost)
    end
  end
end
