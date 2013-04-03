class BrandingsController < ApplicationController

	def index
		@brandings = Branding.all
		
		render :action => :index
	end

end