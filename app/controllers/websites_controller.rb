class WebsitesController < ApplicationController

	def index
		@websites = Website.all
		
		render :action => :index
	end

end