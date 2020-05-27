class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def show
    @created_quizzes = current_user.created_quizzes

    render :show 
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id 
      redirect_to :root, notice: "User created successfully! Please sign in!"
    else 
      render :new
    end
  end

  def update
    if current_user.email != params[:user][:email]
      current_user.update(email: params[:user][:email])
    end
    if current_user.valid?
      redirect_to :root, notice: "Email updated!"
    else
      render :edit 
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
