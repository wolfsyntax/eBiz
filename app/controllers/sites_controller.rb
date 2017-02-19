class SitesController < ApplicationController
  	def about
  	end


  	def index
  		@user = session[:username]
  	end
  	def support

  	end

end
