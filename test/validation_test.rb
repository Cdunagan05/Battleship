gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/validation'

class ValidationTests < Minitest::Test
  def test_it_is_horizontal_with_no_spaces_for_2_unit_ship
    validator = Validation.new
    assert_equal true, validator.two_unit_ship_positions?(24, 26)
    assert_equal false, validator.two_unit_ship_positions?(24, 28)
  end

  def test_it_is_vertical_with_no_spaces_for_2_unit_ship
    validator = Validation.new
    assert_equal true, validator.two_unit_ship_positions?(24, 34)
    assert_equal false, validator.two_unit_ship_positions?(34, 54)
    assert_equal true, validator.two_unit_ship_positions?(50, 40)
  end

  def test_if_it_validates_3_unit_ship
    validator = Validation.new
    assert_equal true, validator.three_unit_ship_posistions?(24, 34, 44)
    assert_equal false, validator.three_unit_ship_posistions?(24, 26, 36)
    assert_equal true, validator.three_unit_ship_posistions?(24, 26, 28)
  end
end
