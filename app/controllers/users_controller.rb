class UsersController < ApplicationController

  def new_promo
    @carousel = Carousel.new
  end

  def create_promo
    @carousel = Carousel.new
    @carousel.image_name = params[:image_name]
    @carousel.link = params[:links]
#    redirect_to '/signup.php'
    if @carousel.save
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
    @transaction = Transaction.new
    @transactions = Transaction.all
    @products = Product.all
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
  def report
    @transaction = Transaction.new
    session[:message] = ""
    @message = ""
    @transaction.product_code = params[:product_code]
    @transaction.phone_number = params[:phone_number]
    @transaction.quantity = params[:quantity]
    @transaction.other = params[:other]

    respond_to do |format|
      if @transaction.save
        @message = "You successfully sold " + @transaction.product_code + "."
        format.html { redirect_to "/dashboard", notice: @message }
        session[:message] = "You sold successfully " + @transaction.product_code + "."
        
      end
    end
  end

private
  
  def user_params
    params.require(:user).permit(:username,:password, :password_confirmation, :account_type)
  end

end
