class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :answer_content
      t.integer :question_id
      t.boolean :correct, :default => false 
      t.timestamps
    end
  end
end
