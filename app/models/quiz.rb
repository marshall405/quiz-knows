class Quiz < ApplicationRecord
    # has_many :taken_quizzes
    # has_many :users, through: :taken_quizzes
    has_many :questions
    belongs_to :owner, class_name: "User"
    

    def self.newest_quiz
        all.last
    end

    def self.oldest_quiz
        all.first
    end

    
end


# quiz.users => all users who have taken that quiz
# quiz.owner => creator of quiz