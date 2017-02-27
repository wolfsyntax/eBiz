class UsersController < ApplicationController

  def new_promo
    @promos = Carousel.new
  end

  def create_promo
    @promos = Carousel.new
    @promos.image_name = params[:image_name]
    @promos.link = params[:links]

    if @promos.save
      redirect_to '/signup.php'
    end
  end

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

  def balance
    #@user = User.find(params[:id])
  end

  def update_balance
    @user = User.find(params[:id])
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

    @info = "+"

    if session[:user_id] != nil
      data = User.find(session[:user_id])
      @info = data.account_type
    end


  end

  def main
    @user = session[:username]

    if session[:user_id] == nil
      @user = ""
    else
      @users = User.find(session[:user_id])
      @account = @users.account_type
      @acname = @users.username
      @clients = User.all

    end
  #  @users = User.all

  end

private
  
  def user_params
    params.require(:user).permit(:username,:password, :password_confirmation, :account_type)
  end

end
