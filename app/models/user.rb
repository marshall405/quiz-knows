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
    # binding.pry
      results = quiz.responses.select do |res|
         res.user_id == self.id
      end

      right = results.select do |r| r.answer.correct end
      wrong = results.select do |w| !w.answer.correct end 
      right.count.to_f / (right.count.to_f + wrong.count.to_f)
  end

  def taken_quizzes
    quizzes = self.responses.map do |r|
      r.question.quiz 
    end
    quizzes.uniq
  end

  def average_score
    quizzes = taken_quizzes
    score = 0
    if !quizzes.empty?
      quizzes.each do |quiz|
        score += quiz_result(quiz)
      end
      score / quizzes.count
    else
      0
    end
  end

  def self.highest_score
    user = User.all.max do |user|
      user.average_score
    end
    user.email
  end

  def self.highest_score_number
    user = User.all.max do |user|
      user.average_score
    end
    user.average_score
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
