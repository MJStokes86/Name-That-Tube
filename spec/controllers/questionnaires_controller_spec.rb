require 'spec_helper'




describe QuestionnairesController do
	describe "GET #index" do
		it "finds all of the questions" do
		question = FactoryGirl.create(:questionnaire)
		get :index
		assigns(:questionnaires).should eq([question])
	end
		it "has a video clue"
		it "renders the :show view"
	end

	describe "GET #choose_answer" do
		it "finds all the questions by id"
		it "should return an array of choices"
		it "renders the :choose_answer view"

	end

	describe "GET #results" do
		it "provides the correct answer from each question"
		it "renders either the :success or :error pages"
	end

end