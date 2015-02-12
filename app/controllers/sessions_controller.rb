class SessionsController < ApplicationController
  def new

  end

  def create
  	   user = User.find_by_email(params[:email])
  	  	if user && User.authenticate(params[:email],params[:password])
          session[:user_id] = user.id
          if params[:remember_me]
            cookies.permanent[:token] = user.token
          else
            cookies[:token] = user.token
          end
	  		
	  		redirect_to root_url, notice: "Logged In"
  	    else
	  		flash.now.alert = "Email or password is in valid"
	  		render "new"
  	   end
    end

    def destroy 
      session[:user_id] = nil
      cookies.delete(:token)
    redirect_to root_url, notice: "logged out"
  end
end
