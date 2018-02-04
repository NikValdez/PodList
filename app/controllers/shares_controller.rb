class SharesController < ApplicationController
	def new
		@share = Share.new
	end

	def create
		@share = Share.new(params[:share])
		@share.request = request
		if @share.deliver
			flash.now[:notice] = 'Thank you for your message!'
		else
			flash.now[:error] = 'Cannot send message.'
			render :new
		end
	end
end
