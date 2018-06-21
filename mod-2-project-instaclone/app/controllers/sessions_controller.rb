class SessionsController < ApplicationController
  skip_before_action :require_logged_in, only: [:new, :create]
  # skip_before_action :current_user, only: [:new, :create]
  layout 'application'

  def new
    render :new
  end

  def create
    #byebug

    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to login_path
      flash[:notice] = "Incorrect username/password"
    end
  end

  def destroy
    session.delete :user_id
    current_user = nil
    redirect_to login_path
  end

  private
  def user_params
    params.permit(:email, :password)
  end

end
