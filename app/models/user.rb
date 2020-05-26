class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true


  has_many :created_quizzes, foreign_key: :owner_id, class_name: 'Quiz'


  has_many :taken_quizzes
  has_many :quizzes, through: :taken_quizzes


end

# @user.create_quizzes => list of created quizzes by user
# @user.create_quizzes.create(title: "blah blah") => creates a new quiz and associates it with user

# @user.quizzes => list of quizzes a user has taken
# @user.taken_quizzes => list of taken_quizzes(user_id and quiz_id), NOT SO USEFUL
# @user.taken_quizzes.create(quiz_id: <quiz_id>) => @user.quizzes will have new quiz
