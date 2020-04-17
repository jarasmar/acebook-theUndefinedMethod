# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do

  it 'is not valid without a message' do
    expect(subject).to_not be_valid
  end

  it 'cannot be edited after ten minutes' do
    post = Post.create(created_at: Time.now)
    Timecop.travel(Time.now + 10.minutes, 1.second) do
      expect(post.post_time_limit).to eq false
    end
  end

  it 'can be edited before ten minutes' do
    post = Post.create(created_at: Time.now)
    Timecop.travel(Time.now + 9.minutes, 59.seconds) do
      expect(post.post_time_limit).to eq true
    end
  end
  
  describe "#as_json" do
  # attempt to test this method - doesn't quite work though
    it 'attachs user_id to both post and comments' do
      @user = User.create { :user }
      @post = Post.create(message: "hi there folks")
      @comment = Comment.create(comment: "this is a comment")

    expect(@post.user_id).to eq @user.id  
    expect(@comment.user_id).to eq @user.id
    end
  end

end
