class Category < ActiveRecord::Base
	has_many :questionnaires
	has_many :video_clues, through: :questionnaires
end
