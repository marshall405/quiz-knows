require "pry"
class ResponsesController < ApplicationController

  def show
    @quiz = Quiz.find(params[:id])
    @response = Response.new 
  end

  def create
    quiz = Quiz.find(params[:quiz_id].keys.first.to_i)
    if params[:answers]
      params[:answers].each do |key,value|
        Response.create(question_id: quiz.questions.first.id, answer_id: key.to_i, user_id: current_user.id) 
      end
    end 
    redirect_to user_path(current_user)
  end

end
