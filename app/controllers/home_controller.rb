class HomeController < ApplicationController
	layout "home"

	def index
		#UserMailer.send_email.deliver
		render :action => :index
	end

end