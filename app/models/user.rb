require 'pry'
class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: {within: 6..10}

  has_many :created_quizzes, foreign_key: :owner_id, class_name: 'Quiz'
  has_many :responses 

  # has_many :taken_quizzes
  # has_many :quizzes, through: :taken_quizzes

  def quiz_result(quiz)
      results = quiz.responses.map do |res|
        res.answer.correct
      end
      right = results.select do |r| r end
      wrong = results.select do |w| !w end 
      right.count.to_f / (right.count.to_f + wrong.count.to_f)
  end

  def taken_quizzes
    quizzes = self.responses.map do |r|
      r.question.quiz 
    end
    quizzes.uniq
  end

  def self.amount
    all.count
  end

  def self.most_created
    user = User.all.max do |user|
      user.created_quizzes.count
    end
    user.email
  end

  def self.most_taken_quizzes
    user = User.all.max do |user|
      user.taken_quizzes.count
    end
    user.email
  end

  def self.most_taken_quizzes_count
      User.find_by(email: most_taken_quizzes).taken_quizzes.count
  end

end
