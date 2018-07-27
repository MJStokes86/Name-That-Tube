require 'rails_helper'

describe :player do
	it "has a valid factory" do
      FactoryGirl.create(:player).should be_valid
	end
  it "is invalid without a user_name" do
  		FactoryGirl.build(:player, :user_name => nil).should be_valid
  	end
  it "is invalid without a password" do
  		FactoryGirl.build(:player, :password_digest => nil).should_not be_valid
  	end
  it "returns a player's user_name and password as a string" do
  		FactoryGirl.create(:player, user_name: 'caddyshack3', password_digest: 'corinacorina').player== 'caddyshack3 corinacorina'
  	end
end