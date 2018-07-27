class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :current_player

  def current_player
  	@current_player ||= Player.find(session[:player_id]) if session[:player_id]
    rescue ActiveRecord::RecordNotFound  
    return

  end

  def require_player
  	redirect_to '/login' unless current_player
  end
 
  def require_admin
  end
end
