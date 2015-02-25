class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout
  before_filter :set_menu
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| 
      u.permit(:password, :password_confirmation, :current_password) 
    }
  end
  
   def layout
    if controller_name == "home_controller"
      layout 'home'
    end
   end

   def authenticate_active_admin_user!
        authenticate_user!
        unless current_user.role?(:administrator)
            flash[:alert] = "You are not authorized to access this resource!"
            redirect_to root_path
        end
    end

  private
  # def current_user
  # 	@current_user ||= User.find_by_token!(cookies[:token]) if cookies[:token]
  # end
  # helper_method :current_user
  # def authorize
  # 	redirect_to log_in_url, alert: :"Not Authorized" if current_user.nil?
  # end
   def set_menu
       @menus ||= Category.where(:is_menu => true).order(:Order)
        @footer_menus ||= Contact.where(:Home_page => true).order(:Order)
        @quicklinks ||= Contact.find_by_Slug("quick-links")
        @vertical_advertisement ||= Advertisement.where(:position => "vertical").limit(3).order("RANDOM()")
        # @current_user ||= session[:user_id] 
       

       # @categories ||= Category.all
   end
end
