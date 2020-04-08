# frozen_string_literal: true

class Post < ApplicationRecord
  validates_presence_of :message
end
