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

  	def support

  	end

end
