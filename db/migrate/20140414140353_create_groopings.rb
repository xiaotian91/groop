class CreateGroopings < ActiveRecord::Migration
  def change
    create_table :groopings do |t|
    t.string :groop_name


      t.timestamps
    end
  end
end
