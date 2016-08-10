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

  def test_valid_ship_placement_for_two_ships_sad
    player = Player.new
    assert_equal false, player.valid_two_unit_ship_placement?(24, 28)
    assert_equal false, player.valid_two_unit_ship_placement?(24, 29)
  end

  def test_valid_ship_placement_for_two_ships
    player = Player.new
    assert_equal true, player.valid_two_unit_ship_placement?(24, 26)
  end

  def test_valid_three_unit_ship_placement_sad
    player = Player.new
    assert_equal false, player.valid_three_unit_ship_placement?(24, 36)
    assert_equal false, player.valid_three_unit_ship_placement?(24, 74)
  end

  def test_valid_three_unit_ship_placement
    player = Player.new
    assert_equal true, player.valid_three_unit_ship_placement?(24, 28)
    assert_equal true, player.valid_three_unit_ship_placement?(24, 44)
  end 
end
