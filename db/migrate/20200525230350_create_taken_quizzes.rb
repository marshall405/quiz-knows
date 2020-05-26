class CreateTakenQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :taken_quizzes do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.timestamps
    end
  end
end
