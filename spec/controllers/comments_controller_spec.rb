# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  before(:each) do
    @user = User.create { :user }
    controller.stub(:authenticate_user!).and_return(true)
    sign_in @user
  end

  describe 'GET /new ' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    before(:each) do
      @post = Post.create(message: 'hi there folks')
      @comment = Comment.create(
        user_id: @user.id, post_id: @post.id,
        comment: 'this is a comment and i go on and on'
      )
    end

    it 'responds with 200' do
      expect(response).to have_http_status(200)
    end

    it 'creates a comment' do
      expect(@comment).to be_an_instance_of(Comment)
    end
  end
end
