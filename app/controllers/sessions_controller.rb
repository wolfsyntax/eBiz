class SessionsController < ApplicationController
  def new
  end

  #639468127879
  # $2a$10$fdi8g5pCkIDcyVXPvgXL2.YZuPa.gcXKDbXXHaWrv23.ISAfuj0tC

  #639468127889
  # $2a$10$yRIrHJG19SBBQyHYV2iviOrtzRz0lA7krajmGR24DZ2.uL355/GVC

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
