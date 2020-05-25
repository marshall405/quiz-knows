class SessionsController < ApplicationController
  
  def create
    # create new session for user
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to :root, notice: "Logged in!"
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    # logout and clear session
    session[:user_id] = nil
    redirect_to :root, notice: "You are now logged out!"
  end
end
