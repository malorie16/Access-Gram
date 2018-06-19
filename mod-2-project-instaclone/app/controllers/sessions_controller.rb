class SessionsController < ApplicationController
  skip_before_action :logged_in?, only: [:new, :create]

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
    redirect_to login_path
  end

  private
  def user_params
    params.permit(:email, :password)
  end

end
