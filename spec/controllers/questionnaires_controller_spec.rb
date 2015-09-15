require 'rails_helper'




describe QuestionnairesController, :type => :controller do
	describe "GET #index" do
		before :each do
		it "finds all of the questions that belongs to a category with a video clue" do
		@question = FactoryGirl.create(:questionnaire)
		get :index, category_id: attributes_for(:category_id, question_id: @question)
	
	end

		
		it "renders the :show view" do
			get :index
			response.should render_template :show
		end


	end
end

	describe "GET #choose_answer" do
		before :each do
		it "should return an array of choices" do
			@choices = FactoryGirl.create(:questionnaire)
			get :choose_answer, id: attributes_for(:id, question_id: @choices)
		end
		it "renders the :choose_answer view" do
			get :choose_answer
			response.should render_template :choose_answer 
		end

	end
end

	describe "GET #results" do
		before :each do
		it "provides the correct answer from each question" do
			@correct_answer = FactoryGirl.create(:questionnaire)
			get :correct_answer, id: attributes_for(:id, question_id: @correct_answer)
		end
		it "renders the :success when choses the correct answer" do
			get :success
			response.should render_template :success
		end

		it "renders the :error page when chosen the incorrect answer" do
			get :error
			response.should render_template :error
		end
	end
end

end
