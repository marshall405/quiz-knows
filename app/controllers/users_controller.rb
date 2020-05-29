class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:create, :new, :update] 
  def new
    @user = User.new 
  end

  def show
    @created_quizzes = current_user.created_quizzes
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id 
      redirect_to :root, notice: "User created successfully! Welcome to the homepage"
    else 
      render :new
    end
  end

  def social 
    render :social
  end

  def update
    if current_user.email != params[:user][:email]
      current_user.email = params[:user][:email]
      current_user.save(:validate => false)
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
