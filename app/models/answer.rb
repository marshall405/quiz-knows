class Answer < ApplicationRecord
    belongs_to :question 
    has_many :responses


    def self.randomize_answers(question)
        question.answers.shuffle 
    end

end
