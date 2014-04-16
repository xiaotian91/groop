class AddIdsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :groop_id, :integer
  end
end
