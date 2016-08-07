gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/validation'
require './lib/grid'

class ValidationTests < Minitest::Test
  include Validation
  #PRE-BS-WORK
  # def test_it_is_horizontal_with_no_spaces_for_2_unit_ship
  #   validator = Validation.new
  #   assert_equal true, validator.two_unit_ship_positions?(24, 26)
  #   assert_equal false, validator.two_unit_ship_positions?(24, 28)
  # end
  #
  # def test_it_is_vertical_with_no_spaces_for_2_unit_ship
  #   validator = Validation.new
  #   assert_equal true, validator.two_unit_ship_positions?(24, 34)
  #   assert_equal false, validator.two_unit_ship_positions?(34, 54)
  #   assert_equal true, validator.two_unit_ship_positions?(50, 40)
  # end
  #
  # def test_if_it_validates_3_unit_ship
  #   validator = Validation.new
  #   assert_equal true, validator.three_unit_ship_posistions?(24, 34, 44)
  #   assert_equal false, validator.three_unit_ship_posistions?(24, 26, 36)
  #   assert_equal true, validator.three_unit_ship_posistions?(24, 26, 28)
  # end

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
