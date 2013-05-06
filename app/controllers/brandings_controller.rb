class BrandingsController < ApplicationController

	def index
		@brandings = Branding.all
		
		render :action => :index
	end

	def show
		branding = Branding.where(params[:id]).last

    render :json => branding
	end

end