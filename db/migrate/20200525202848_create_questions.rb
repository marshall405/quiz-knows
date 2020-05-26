class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question_content
      t.integer :quiz_id
      # t.integer :correct_answer_id
      t.timestamps
    end
  end
end
