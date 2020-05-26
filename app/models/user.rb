class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, length: {within: 6..10}

  has_many :created_quizzes, foreign_key: :owner_id, class_name: 'Quiz'
  has_many :responses 

  # has_many :taken_quizzes
  # has_many :quizzes, through: :taken_quizzes


end


# 