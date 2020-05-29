# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "admin@quizknows.com", password: "password")

quiz = Quiz.create(title: "ABC's", owner_id: user.id)

q0= Question.create(question_content: "What does 'Apple' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "A", question_id: q0.id, correct: true)
    Answer.create(answer_content: "B", question_id: q0.id)
    Answer.create(answer_content: "C", question_id: q0.id)
    Answer.create(answer_content: "D", question_id: q0.id)

q1 = Question.create(question_content: "What does 'Bee' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "A", question_id: q1.id)
    Answer.create(answer_content: "B", question_id: q1.id, correct: true)
    Answer.create(answer_content: "C", question_id: q1.id)
    Answer.create(answer_content: "D", question_id: q1.id)

q2 = Question.create(question_content: "What does 'Cat' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "A", question_id: q2.id)
    Answer.create(answer_content: "B", question_id: q2.id)
    Answer.create(answer_content: "C", question_id: q2.id, correct: true)
    Answer.create(answer_content: "D", question_id: q2.id)

q3 = Question.create(question_content: "What does 'Dog' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "A", question_id: q3.id)
    Answer.create(answer_content: "B", question_id: q3.id)
    Answer.create(answer_content: "C", question_id: q3.id)
    Answer.create(answer_content: "D", question_id: q3.id, correct: true)

q4 = Question.create(question_content: "What does 'Elephant' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "E", question_id: q4.id, correct: true)
    Answer.create(answer_content: "F", question_id: q4.id)
    Answer.create(answer_content: "G", question_id: q4.id)
    Answer.create(answer_content: "H", question_id: q4.id)

q5 = Question.create(question_content: "What does 'Frog' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "E", question_id: q5.id)
    Answer.create(answer_content: "F", question_id: q5.id, correct: true)
    Answer.create(answer_content: "G", question_id: q5.id)
    Answer.create(answer_content: "H", question_id: q5.id)

q6 = Question.create(question_content: "What does 'Giraffe' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "E", question_id: q6.id)
    Answer.create(answer_content: "F", question_id: q6.id)
    Answer.create(answer_content: "G", question_id: q6.id, correct: true)
    Answer.create(answer_content: "H", question_id: q6.id)

q7 = Question.create(question_content: "What does 'Hippo' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "E", question_id: q7.id)
    Answer.create(answer_content: "F", question_id: q7.id)
    Answer.create(answer_content: "G", question_id: q7.id)
    Answer.create(answer_content: "H", question_id: q7.id, correct: true)

q8 = Question.create(question_content: "What does 'Iguana' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "I", question_id: q8.id, correct: true)
    Answer.create(answer_content: "J", question_id: q8.id)
    Answer.create(answer_content: "K", question_id: q8.id)
    Answer.create(answer_content: "L", question_id: q8.id)

q9 = Question.create(question_content: "What does 'Jack Rabbit' start with?", quiz_id: quiz.id)
    Answer.create(answer_content: "I", question_id: q9.id)
    Answer.create(answer_content: "J", question_id: q9.id, correct: true)
    Answer.create(answer_content: "K", question_id: q9.id)
    Answer.create(answer_content: "L", question_id: q9.id)

# Response.create(question_id: question.id, answer_id: a.id, user_id: user.id, quiz_id: quiz.id)

quiz1 = Quiz.create(title: "More ABC's...", owner_id: user.id)

q00 = Question.create(question_content: "What does 'Airplane' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "A", question_id: q00.id, correct: true)
    Answer.create(answer_content: "B", question_id: q00.id)
    Answer.create(answer_content: "C", question_id: q00.id)
    Answer.create(answer_content: "D", question_id: q00.id)

q01 = Question.create(question_content: "What does 'Boat' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "A", question_id: q01.id)
    Answer.create(answer_content: "B", question_id: q01.id, correct: true)
    Answer.create(answer_content: "C", question_id: q01.id)
    Answer.create(answer_content: "D", question_id: q01.id)

q02 = Question.create(question_content: "What does 'Car' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "A", question_id: q02.id)
    Answer.create(answer_content: "B", question_id: q02.id)
    Answer.create(answer_content: "C", question_id: q02.id, correct: true)
    Answer.create(answer_content: "D", question_id: q02.id)

q03 = Question.create(question_content: "What does 'Dingy' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "A", question_id: q03.id)
    Answer.create(answer_content: "B", question_id: q03.id)
    Answer.create(answer_content: "C", question_id: q03.id)
    Answer.create(answer_content: "D", question_id: q03.id, correct: true)

q04 = Question.create(question_content: "What does 'Electric Bike' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "E", question_id: q04.id, correct: true)
    Answer.create(answer_content: "F", question_id: q04.id)
    Answer.create(answer_content: "G", question_id: q04.id)
    Answer.create(answer_content: "H", question_id: q04.id)

q05 = Question.create(question_content: "What does 'Fire Truck' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "E", question_id: q05.id)
    Answer.create(answer_content: "F", question_id: q05.id, correct: true)
    Answer.create(answer_content: "G", question_id: q05.id)
    Answer.create(answer_content: "H", question_id: q05.id)

q06 = Question.create(question_content: "What does 'Garage' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "E", question_id: q06.id)
    Answer.create(answer_content: "F", question_id: q06.id)
    Answer.create(answer_content: "G", question_id: q06.id, correct: true)
    Answer.create(answer_content: "H", question_id: q06.id)

q07 = Question.create(question_content: "What does 'Handcar' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "E", question_id: q07.id)
    Answer.create(answer_content: "F", question_id: q07.id)
    Answer.create(answer_content: "G", question_id: q07.id)
    Answer.create(answer_content: "H", question_id: q07.id, correct: true)

q08 = Question.create(question_content: "What does 'Infinity' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "I", question_id: q08.id, correct: true)
    Answer.create(answer_content: "J", question_id: q08.id)
    Answer.create(answer_content: "K", question_id: q08.id)
    Answer.create(answer_content: "L", question_id: q08.id)

q09 = Question.create(question_content: "What does 'Jeep' start with?", quiz_id: quiz1.id)
    Answer.create(answer_content: "I", question_id: q09.id)
    Answer.create(answer_content: "J", question_id: q09.id, correct: true)
    Answer.create(answer_content: "K", question_id: q09.id)
    Answer.create(answer_content: "L", question_id: q09.id)











