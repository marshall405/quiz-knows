class WelcomeController < ApplicationController
  
  def index
    if current_user
      render 'users/show'
    else
      redirect_to :login
    end
  end


end


