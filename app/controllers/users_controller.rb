class UsersController < ApplicationController
  before_action :find_params, only: [:show, :edit, :destroy, :update]
  skip_before_action :require_logged_in, only: [:new, :create]
  layout 'pages'


  def show
    render :layout => 'users'

  end

  def new
    @user = User.new
    render :layout => 'application'
  end

  def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      redirect_to login_path
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    #byebug
    redirect_to user_path(@user)
  end

  def destroy
    @user.delete
    reset_session
    redirect_to login_path
  end

  private
  def find_params
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
