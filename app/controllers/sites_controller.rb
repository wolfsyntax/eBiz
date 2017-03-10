class SitesController < ApplicationController
  	def about
  	end

  	def index

  		@user = session[:username]
  		@announce = Announcement.all
      @promos = Carousel.all
  	end

  	def add_announcement
  		@announcement = Announcement.new
  	end
=begin
   t.string   :title
      t.text  :content
      t.string  :Web_URL
      t.string  :author
      t.string  :attachment
=end
    def save_announcement
      @announcement = Announcement.new announcement_params
      @announcement.save
    end

  	def support

  	end
  private
    def announcement_params
      params.require(:announcement).permit(:title,:content, :Web_URL, :author, :attachment)
    end
end
