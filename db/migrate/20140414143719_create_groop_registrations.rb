class CreateGroopRegistrations < ActiveRecord::Migration
  def change
    create_table :groop_registrations do |t|
      t.integer :user_id
      t.integer :grooping_id

      t.timestamps
    end
  end
end
