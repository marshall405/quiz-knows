class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: {within: 6..10}

  has_many :created_quizzes, foreign_key: :owner_id, class_name: 'Quiz'
  has_many :responses 

  # has_many :taken_quizzes
  # has_many :quizzes, through: :taken_quizzes

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
end
