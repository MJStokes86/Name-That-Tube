

FactoryGirl.define do
  factory :player do |f|
    f.user_name "caddyshack3"
    f.password "corinacorina"
  end
end



FactoryGirl.define do
  factory :questionnaire do |f|
    f.question "In what year did MTV (Music Television) premiere and what was the first music video the channel aired?"
    f.choices "['1982 Michael Jackson Bille Jean', '1984 Madonna Like a virgin', '1981 The Buggles Video Killed The Radio Star']"
    f.correct_answer "1981 The Buggles Video Killed The Radio Star"
  end
end

  FactoryGirl.define do
  	factory :invalid_questionnaire, parent: :questionnaire do |f|
  		f.question nil
  	end
end
