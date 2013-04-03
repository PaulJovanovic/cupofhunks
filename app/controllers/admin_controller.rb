class AdminController < ApplicationController
	before_filter :authenticate_admin!

	layout "admin"

	def index
		respond_to do |format|
			format.html
		end
	end

end