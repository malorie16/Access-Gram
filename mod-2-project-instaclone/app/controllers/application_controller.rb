class ApplicationController < ActionController::Base
  before_action :require_logged_in
  helper_method :current_user



  def current_user
    #byebug
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  private
  def require_logged_in
    redirect_to controller: 'sessions', action: 'new' unless current_user
  end

end
