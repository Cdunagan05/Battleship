gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/validation'
require './lib/grid'
require './lib/computer_ships'

class ComputerShipsTest < Minitest::Test
  def test_it_gets_a_two_unit_ship
    first_cpu_ship = ComputerShips.new
    grid = Grid.new
    assert_equal true, first_cpu_ship.cpu_generates_random_positions_for_2_unit_ship.is_a?(Array)
  end

  def test_it_gets_a_three_unit_ship
    second_cpu_ship = ComputerShips.new
    grid = Grid.new
    assert_equal true, second_cpu_ship.cpu_generates_random_positions_for_3_unit_ship.is_a?(Array)
  end
end
