class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
