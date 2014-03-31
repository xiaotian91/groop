class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :courseNum
      t.string :courseName
      t.string :instructorName
      t.text :courseDesc
      t.timestamps
    end
  end
end
