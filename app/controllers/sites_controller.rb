class SitesController < ApplicationController
  	def about
    
  	end

    def a_new
      if session[:account_type] == 'retailer' then
        redirect_to '/dashboard '
      else
        @announcement = Announcement.new
      end
    end

  	def index

  		@user = session[:username]
      session[:user_id] = nil
  		@announce = Announcement.all
      @promos = Carousel.all
      @user = User.new
  	end

    def offers
      
    end
    
  	def add_announcement
      if session[:account_type] == 'retailer' then
        redirect_to '/dashboard '
      else
        @announcement = Announcement.new
      end
  		
  	end
=begin
   t.string   :title
      t.text  :content
      t.string  :Web_URL
      t.string  :author
      t.string  :attachment
=end
    def save_announcement
      if session[:account_type] == 'retailer' then
        redirect_to '/dashboard '
      else
        @announcement = Announcement.new
        @announcement.author = params[:author]
        @announcement.title = params[:title]
        @announcement.content = params[:content]
        @announcement.Web_URL = params[:Web_URL]
        @announcement.attachment = params[:attachment]

        if @announcement.save then
          redirect_to '/index.html'
        else
          redirect_to '/new/announcement.html'
        end
      end
    end

  	def support

  	end
  private
    def announcement_params
      params.require(:announcement).permit(:title, :content, :Web_URL, :author, :attachment)
    end
end
