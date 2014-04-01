class AddQuizToUser < ActiveRecord::Migration
  def change
    add_column :users, :quiz_id, :integer
  end
end
