class Admin::WebsitesController < ApplicationController

	layout "admin"

	def index
		@websites = Website.all
		
		respond_to do |format|
			format.html
		end
	end

end