class CategoriesController < ApplicationController

	before_action :require_player, only: [:index]

	def index
		@categories=Category.all
		###It shows a list of all the categories
		# binding.pry
		render :index
	end

	def show
		@category = Category.find(params[:id])
		@question = @category.questions.random
		@video = @question.video_clue
	end
	
end
