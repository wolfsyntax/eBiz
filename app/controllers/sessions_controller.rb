class SessionsController < ApplicationController
  def new
  end

  def create

  	user = User.authenticate(params[:username], params[:password])

  	if user

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
