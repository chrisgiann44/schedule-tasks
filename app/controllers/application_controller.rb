class ApplicationController < ActionController::Base
  before_action :set_currect_user
  
  def set_currect_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end    
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: "You must be logged in to do that" if Current.user.nil?
  end
end
