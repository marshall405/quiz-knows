require "pry"
class ResponsesController < ApplicationController

  def show
    @quiz = Quiz.find(params[:id])
    @response = Response.new 
  end

  def create
    puts params
    quiz = Quiz.find(params[:quiz_id].keys.first.to_i)
    response = Response.where(quiz_id: quiz.id, question_id: quiz.questions.first.id,user_id: current_user.id)
    
    if params[:answers]
      params[:answers].each do |key,value|
        # binding.pry
        if response
          response.each do |res|
            res.destroy
          end
          Response.create(question_id: quiz.questions.first.id, answer_id: value.to_i, user_id: current_user.id, quiz_id: quiz.id) 
        end
      end
    end

    redirect_to user_path(current_user)
  end

end
