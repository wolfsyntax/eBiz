class SessionsController < ApplicationController
  def new
  end

  def create

    user = User.find_by_username(params[:username])

 #   if params[:username] == params[:password_confirm]

    if user && user.authenticate(params[:password])

  		session[:user_id] = user.id
  		session[:username] = user.username
  		redirect_to '/dashboard'

  	else
  		flash.now.alert = "Invalid username or password"
  		render "new"
  	end

  end

  def index
  	redirect_to ''
  end

  def destroy

  	session[:user_id] = nil
    session[:username] = nil
  	redirect_to "/index.html"

  end


end
