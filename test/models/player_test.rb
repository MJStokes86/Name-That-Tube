require 'test_helper'
require 'capybara/rspec'

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


 describe Player, '.active' do
  it 'returns only active players' do
    # setup
    active_player = create(:player, active: true)
    non_active_player = create(:player, active: false)

    # exercise
    result = Player.active

    # verify
    expect(result).to eq [active_player]

    # teardown is handled for you by RSpec
  end
end

# Prefix instance methods with a '#'
describe Player, '#name' do
  it 'returns the concatenated first and last name' do
    # setup
    player = build(:player, first_name: 'Josh', last_name: 'Steiner')

    # excercise and verify
    expect(player.name).to eq 'Josh Steiner'
  end
end

end
