class VideoCluesController < ApplicationController

	def show
		@video = VideoClue.find(params[:id])
		@videos = @video.video_url.html_safe
		render :video

		# redirect_to '/'
	end



end
