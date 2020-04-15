class CreateLikePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :like_posts do |t|
      t.references :user
      t.references :post
      t.timestamps
    end
  end
end
