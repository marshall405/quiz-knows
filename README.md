# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<!-- # @user.create_quizzes => list of created quizzes by user
# @user.create_quizzes.create(title: "blah blah") => creates a new quiz and associates it with user

# @user.quizzes => list of quizzes a user has taken
# @user.taken_quizzes => list of taken_quizzes(user_id and quiz_id), NOT SO USEFUL
# @user.taken_quizzes.create(quiz_id: <quiz_id>) => @user.quizzes will have new quiz



# create and take quizzes -->

<!-- 
    User can login, signup or edit 
    User can create a new quiz, or take an existing one

    @user.taken_quizzes should show all taken quizzes by user
    @user.created_quizzes should show all created quizzes by user


 -->


<!-- 
    User (can create and take many quizzes)
        has_many :created_quizzes, foreign_key: "owner_id", class_name: "Quiz"

        has_many :taken_quizzes, foreign_key: "takers_id", class_name: "Quiz"


    Quiz
        has_many questions
        belongs_to :owner, class_name: 'User'

        has_many :takers, class_name: 'User'


    Question 
        belongs_to quiz

        has_many answers
        has_many response
    
    Answer
        belongs_to question 
        has_many responses
        
        
    Response 
        belongs_to question
        belongs_to answer  
        belongs_to user
 -->

