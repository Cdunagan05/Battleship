gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/validation'
require './lib/grid'

class ValidationTests < Minitest::Test
  include Validation

  def test_if_chooses_a_second_spot_that_is_valid
    grid = Grid.new
    p1 = 24
    assert_equal true, grid.second_spot_valid?(p1, 26)
    assert_equal true, grid.second_spot_valid?(p1, 34)
    assert_equal false, grid.second_spot_valid?(p1, 54)
  end

  def test_it_validates_if_there_is_already_a_ship_there
    grid = Grid.new
    assert_equal false, grid.placing_over_a_ship?([24])
  end

  def test_it_chooses_a_third_spot_that_is_valid
    grid = Grid.new
    p1 = 24
    assert_equal true, grid.third_spot_valid?(p1, 44)
    assert_equal false, grid.third_spot_valid?(p1, 26)
  end
end
