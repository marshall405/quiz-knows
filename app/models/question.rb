class Question < ApplicationRecord
    belongs_to :quiz
    has_many :answers
    has_many :responses

    def self.total_questions
        Question.all.count
    end

end
