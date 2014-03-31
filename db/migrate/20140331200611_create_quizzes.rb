class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :one
      t.integer :two

      t.timestamps
    end
  end
end
