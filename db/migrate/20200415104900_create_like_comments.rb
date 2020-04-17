# frozen_string_literal: true

class CreateLikeComments < ActiveRecord::Migration[5.1]
  def change
    create_table :like_comments do |t|
      t.references :user
      t.references :comment
      t.timestamps
    end
  end
end
