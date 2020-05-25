class UsersController < ApplicationController
  
  def show
    if current_user
      render :show
    else
      redirect_to :root
    end
  end

  def new
    @user = User.new 
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to :login
    else 
      # flash.now[:alert] = ""
      render :new
    end

    
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
