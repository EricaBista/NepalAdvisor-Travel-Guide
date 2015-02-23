class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]
   before_filter :authenticate_user!

  def edit
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_with_password(user_params)
      # Sign in the user by passing validation in case their password changed
      sign_in @user, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end
    

    
  def profile
    @user = User.find_by_id(current_user)

    end

    def update
       # @picture = @user.picture.build(user_params)
      respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to profile_path(@user), notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
     end
    end

  	def new
    	  @user = User.new
    end

    def create
  	    @user = User.new(user_params)
  	   
  	    if @user.save
  	    	session[:user_id] = @user.id
  		 
         redirect_to root_url, notice: "Thank you for signing in"
  	    else
  		 render "new"
  	    end
    end
    def set_user
      @user = User.find(params[:id])
    end
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :picture, :full_name)
    end
end
