class QuestionnairesController < ApplicationController

	def index
	
		@question = Questionnaire.find(params[:category_id])
		@category = Category.find(params[:category_id])
		@videos = VideoClue.find(params[:category_id])
		###This finds all the questions from the question table by their category_id. Whenever I select a category, it matches the question related to the category

		render :show
		###render :show Renders Html page
	end

	def choose_answer
		
		@question = Questionnaire.find(params[:id])
		@choices = @question.choices
		#list all from the choices column

		render :choose_answer

	end

	def results
		# binding.pry
	
		@question_data= Questionnaire.where(id: params[:id])
		@correct_answer = @question_data[0].correct_answer
		@selected_answer = params[:choice]
		#In order to compare the user selected answer to the right answer, I had to make 'choice' as a param and created a variable that is equal to the params so it will render the success and error pages correctly.
		
		if @selected_answer == @correct_answer
			render :success
		else
			render :error
		end

		
	 
		







		
		end


	
	

end

