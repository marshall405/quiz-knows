class Quiz < ApplicationRecord
    # has_many :taken_quizzes
    # has_many :users, through: :taken_quizzes
    has_many :questions
    has_many :responses
    belongs_to :owner, class_name: "User"
    

    def self.newest_quiz
        all.last
    end

    def self.oldest_quiz
        all.first
    end

    def self.amount
        all.count
    end

    def self.most_taken_quiz
        quiz = Quiz.all.max do |q|
            users_taken_quiz(q).count
        end
        quiz.title
    end

    def self.users_taken_quiz(quiz)
        users = quiz.responses.map do |res|
            res.user
        end.uniq
    end


end


# quiz.users => all users who have taken that quiz
# quiz.owner => creator of quiz