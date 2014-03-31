class AddMoreQuestions < ActiveRecord::Migration
  def change
    add_column :quizzes, :three, :integer
    add_column :quizzes, :four, :integer
    add_column :quizzes, :five, :integer
    add_column :quizzes, :six, :integer
    add_column :quizzes, :seven, :integer
    add_column :quizzes, :eight, :integer
    add_column :quizzes, :nine, :integer
    add_column :quizzes, :ten, :integer
  end
end
