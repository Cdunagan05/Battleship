gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/start_sequence.rb'

class StartTest < Minitest::Test
  def test_it_initiates_instructions
    initial_input = Start.new
    assert_equal "In the game of BATTLESHIP you are tyring to sink the oppenent's ships
by targeting their ships' positions on the map.  For example, if their ship
is located at positions A1 and A2, and you target A1, then you have Hit their
ship.  If you target A3, you have Missed their ship. Keep going until their
ships are all sunk!!", initial_input.intro("i")
  end

  def test_it_initiates_instructions_with_word
    initial_input = Start.new
    assert_equal "In the game of BATTLESHIP you are tyring to sink the oppenent's ships
by targeting their ships' positions on the map.  For example, if their ship
is located at positions A1 and A2, and you target A1, then you have Hit their
ship.  If you target A3, you have Missed their ship. Keep going until their
ships are all sunk!!", initial_input.intro("instructions")
  end
end
