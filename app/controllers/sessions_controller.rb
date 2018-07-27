class SessionsController < ApplicationController
	def new
		render :new
	end

	def create
		@player = Player.find_by(user_name: params[:user_name])
		if @player && @player.authenticate(params[:password])
			session[:player_id] = @player.id
			redirect_to '/categories'
		else

			@message = 'This username and password combination does not exist'.upcase

			render :new
		end

	end

	def destroy
		session[:player_id] = nil
		redirect_to '/'
	end
end
