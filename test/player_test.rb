gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/validation'
require './lib/grid'
require './lib/player'

class PlayerTest < Minitest::Test
  def test_it_turns_input_into_array_of_numbers
    player = Player.new
    assert_equal [26, 36, 46], player.input_coords_to_number("A2 b2 c2")
  end

  
end
