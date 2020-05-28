require "pry"
class QuizzesController < ApplicationController

    def index
        @quizzes = Quiz.all 
    end

    def new 
        @quiz = Quiz.new 
        @question = Question.new
    end

    def edit
        @quiz = Quiz.find_by(id: params[:id])
        if @quiz.owner_id != current_user.id
            flash[:alert] = "Can not edit someone elses quiz"
            redirect_to user_path current_user
        end
    end

    def create
        @quiz = current_user.created_quizzes.create(title: params[:quiz][:title])

        params[:quiz][:questions].each_with_index do |question, index|
            if !question.empty?
                q = Question.create(question_content: question, quiz_id: @quiz.id)
            end
        
            params[:answers][index.to_s].each_with_index do |answer, i|
                if !answer.empty?
                    if i == 0 
                        Answer.create(answer_content: answer, question_id: q.id, correct: true)
                    else 
                        Answer.create(answer_content: answer, question_id: q.id)
                    end
                end
            end
        end
        redirect_to quizzes_path
    end

    def update
        quiz = Quiz.find_by(id: params[:id])
        quiz.update(title: params[:title])

        params[:quiz][:questions].each do |q_id, q_val|
            Question.find_by(id: q_id).update(question_content: q_val)
        end

        if params[:answers]
            params[:answers].each do |a_id, a_val|
                Answer.find_by(id: a_id).update(answer_content: a_val)
            end
        end 

        redirect_to user_path(current_user), notice: "Quiz updated"
    end


    private

    # def quiz_params
    #     params.require(:quiz).permit(:title, :questions)
    # end
end
