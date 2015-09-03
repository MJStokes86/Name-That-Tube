require 'faker'

FactoryGirl.define do
	factory :player do |f|
		f.user_name {Faker::Name.user_name}
		f.password {Faker::Name.password}
	end
end

FactoryGirl.define do
  factory :player do |f|
    f.user_name "caddyshack3"
    f.password "corinacorina"
  end
end

