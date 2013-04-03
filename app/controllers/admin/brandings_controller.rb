class Admin::BrandingsController < ApplicationController

	layout "admin"

	def index
		@brandings = Branding.all

		respond_to do |format|
			format.html
		end
	end

	def new
		@branding = Branding.new
		@branding.photos.build

		respond_to do |format|
			format.html
		end
	end

	def create
		@branding = Branding.new(params[:branding])

		if @branding.save
	  	respond_to do |format|
	      format.html  { redirect_to(admin_branding_path(@branding),
	                    :notice => 'Branding was successfully created.') }
	    end
    else
      redirect_to new_admin_branding_path
    end
	end

	def show
		@branding = Branding.where(:id => params[:id]).last

		if @branding
			respond_to do |format|
				format.html
			end
		else
			redirect_to admin_brandings_path
		end
		
	end

	def destroy
    @branding = Branding.find(params[:id])
    @branding.destroy

    respond_to do |format|
      format.html { redirect_to admin_brandings_path }
    end
  end

end