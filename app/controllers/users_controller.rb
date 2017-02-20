class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create

  	@user = User.new

  	@user.username = params[:user][:username]
  	@user.password_hash = params[:user][:password]
    @user.account_type = params[:user][:account_type]
  	if @user.save
  		redirect_to "/#{@user.id}/view/" #root_url, :notice => "Signed up!"
  	else
  		render "new"
  	end

  end

  def destroy

  	@user = User.find(params[:id])

  	@user.destroy
  	redirect_to '/signup.php'

  end


  def view
  	
  	@user = User.find(params[:id])

  end

  def admin_new
    @users = User.new    

  end

  def main
    @user = session[:username]
    @users = User.find(session[:user_id])

  #  @users = User.all
  end
end
