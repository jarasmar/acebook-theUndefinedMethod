# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'cannot be edited after ten minutes' do
    comment = Comment.create(created_at: Time.now)
    Timecop.travel(Time.now + 10.minutes, 1.second) do
      expect(comment.comment_time_limit).to eq false
    end
  end

  it 'can be edited before ten minutes' do
    comment = Comment.create(created_at: Time.now)
    Timecop.travel(Time.now + 9.minutes, 59.seconds) do
      expect(comment.comment_time_limit).to eq true
    end
  end
end
