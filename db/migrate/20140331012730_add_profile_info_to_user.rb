class AddProfileInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :major, :string
    add_column :users, :bio, :string
  end
end
