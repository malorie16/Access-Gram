class ApplicationController < ActionController::Base
  # helper_method :logged_in?
  # before_action :logged_in?
  before_action :require_logged_in


  def current_user
    #byebug
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  private
  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
