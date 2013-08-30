class ApplicationController < ActionController::Base
  protect_from_forgery

  
  def require_session
    if !current_user
      redirect_to root_path, alert: "You need to log in"
      false
    end
  end 

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
