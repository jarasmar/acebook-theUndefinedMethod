# frozen_string_literal: true

class Post < ApplicationRecord
  validates_presence_of :message
  belongs_to :user

  def as_json(options = {})
    super(options.merge(include: [:user, comments: {include: :user}]))
  end
  
end
