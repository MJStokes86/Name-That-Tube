class Questionnaire < ActiveRecord::Base

	belongs_to :category

	serialize :choices

end
