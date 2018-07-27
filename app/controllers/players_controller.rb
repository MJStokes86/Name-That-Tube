class PlayersController < ApplicationController
	def new
		@player = Player.new
		render :new
	end

	def create
		@player = Player.new
		@player.user_name = params[:user_name]
		@player.password = params[:password]
		@player.password_confirmation = params[:password_confirmation]

		if params[:password] == [:password_confirmation]
			flash.now[:alert] = 'Passwords must match!'
		end

		
		if @player.save
			redirect_to '/'
			else
				render 'new'
			end
	

		
		
	end
	


end
