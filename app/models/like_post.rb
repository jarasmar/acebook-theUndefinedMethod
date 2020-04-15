# frozen_string_literal: true

class LikePost < ApplicationRecord
  belongs_to :post
  belongs_to :user
end
