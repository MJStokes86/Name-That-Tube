class QuestionsController < ApplicationController

	def video_clue
    @question = Question.find params[:id]
    @video = @question.video_clue
	  @videos = @video.video_url
  end

  def answer
    @question = Question.find params[:id]
    @answers = @question.answers
    #load the answers
    # and put them into the template in a form
  end

  def validate_answer
    # binding.pry 
    @correct_answer = Answer.where(correct: true).map(&:text)
    @selected_answer = params[:answer]
    # @score = Player.find_by(id: params[:id])


    #check if the submitted answer is the correct answer

    if @correct_answer.include? (@selected_answer)   
    render :success
    # @score.increment!(:score)

    else
      render :fail
    end


  end
end
