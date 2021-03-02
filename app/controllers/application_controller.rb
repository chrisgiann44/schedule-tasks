class ApplicationController < ActionController::Base
  before_action :set_currect_user
  
  def set_currect_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end    
  end
end
