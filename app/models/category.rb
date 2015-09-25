class Category < ActiveRecord::Base
	has_many :questions
	has_many :video_clues, through: :questions
end
