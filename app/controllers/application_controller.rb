class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 layout :layout
 before_filter :set_menu
 
   def layout
    if controller_name == "home_controller"
    layout 'home'
    end
  end

  private
  def current_user
  	@current_user ||= User.find_by_token!(cookies[:token]) if cookies[:token]
  end
  helper_method :current_user
  def authorize
  	redirect_to log_in_url, alert: :"Not Authorized" if current_user.nil?
  end
  def set_menu
      @categories ||= Category.all
  end
end
