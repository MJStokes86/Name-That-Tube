class VideoClue < ActiveRecord::Base
	belongs_to :questionnaire
	belongs_to :category
end
