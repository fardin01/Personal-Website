class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice]= "Logged in!"
      redirect_to root_path
    else 
      flash.now.alert = "Email or passowrd invalid"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
    flash[:notice]=  "Logged out"
  end

end