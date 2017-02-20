class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create

#  	@user = User.new

#    @user.account_type = params[:user][:account_type]

#    @user.username = params[:user][:username]
#    @user.password = params[:user][:password]
#    @user.password_confirmation = params[:user][:password_confirmation]
  
    @user = User.new user_params
  	
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

    if session[:user_id] == nil
      @user = ""
    else
      @users = User.find(session[:user_id])
      @account = @users.account_type
      @acname = @users.username

    end
  #  @users = User.all

  end

private
  
  def user_params
    params.require(:user).permit(:username,:password, :password_confirmation, :account_type)
  end

end
