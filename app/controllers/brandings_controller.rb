class BrandingsController < ApplicationController

	def index
		@brandings = Branding.all
		
		render :action => :index
	end

	def show
		branding = Branding.where(:id => params[:id]).last

		branding = {:title => branding.title, :image => branding.photos.first.image.url(:large), :description => branding.description} 
    render :json => branding
	end

end