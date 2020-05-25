class UsersController < ApplicationController
  
  def new
    @user = User.new 
  end

  def edit
    if current_user
      render :edit 
    else
      redirect_to :root
    end
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to :login, notice: "User created successfully! Please sign in!"
    else 
      render :new
    end
  end

  def update
    if current_user.email != params[:user][:email]
      current_user.update(email: params[:user][:email])
    end
    if current_user.valid?
      redirect_to :root
    else
      render :edit 
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
