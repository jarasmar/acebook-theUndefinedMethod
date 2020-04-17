# frozen_string_literal: true

class LikeComment < ApplicationRecord
  belongs_to :comment
  belongs_to :user
end
