# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
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
    it 'responds with 200' do
      post = Post.create(user_id: @user.id, message: "Hello, world!")
      expect(response).to have_http_status(200)
    end

    it 'creates a post' do
      post = Post.create(user_id: @user.id, message: "Hello, world!")
      expect(post).to be_a_new(Post)
    end

    it 'edits a post' do
      post = Post.create(user_id: @user.id, message: "Hello, world!")
      post.update(user_id: @user.id, message: "This is a change")
      expect(post.message).to eq("This is a change")
    end

    it 'deletes a post' do
      post = Post.create(user_id: @user.id, message: "Hello, world!")
      post.destroy
      expect(post).not_to be(Post)
    end
  end

  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
