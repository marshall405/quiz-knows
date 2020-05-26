# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "email@email.com", password: "password")

quiz = Quiz.create(title: "ABC's", owner_id: user.id)

question = Question.create(question_content: "What does apple start with?", quiz_id: quiz.id)

a = Answer.create(answer_content: "A", question_id: question.id, correct: true)
b = Answer.create(answer_content: "B", question_id: question.id)
c = Answer.create(answer_content: "C", question_id: question.id)


Response.create(question_id: question.id, answer_id: a.id, user_id: user.id)











