class Question < ActiveRecord::Base
  belongs_to :category

  has_many :answers

  has_one :video_clue
  has_many :answers

  def correct_answer
  	answers.find_by correct: true
  end

end
