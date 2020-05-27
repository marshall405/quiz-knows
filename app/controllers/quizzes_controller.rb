require "pry"
class QuizzesController < ApplicationController

    def new 
        @quiz = Quiz.new 
        @question = Question.new
    end

    def create
        quiz = current_user.created_quizzes.create(title: params[:quiz][:title])

        params[:quiz][:questions].each_with_index do |question, index|
            if !question.empty?
                q = Question.create(question_content: question, quiz_id: quiz.id)
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
        
    end







    
    private

    # def quiz_params
    #     params.require(:quiz).permit(:title, :questions)
    # end
end
