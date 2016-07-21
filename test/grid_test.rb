gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require './lib/grid'

class GridTest < Minitest::Test
  def test_grid_exists
    grid = Grid.new
    assert_equal "==========\n..1.2.3.4 \nA. . . . \nB. . . . \nC. . . . \nD. . . . \n==========\n", grid.show_grid
  end

  def test_it_can_assign
    new_grid = Grid.new
    new_grid.assign(26, "S")
    assert_equal "==========\n..1.2.3.4 \nA. .S. . \nB. . . . \nC. . . . \nD. . . . \n==========\n".chars, new_grid.grid
    new_grid.assign(36, "S")
    assert_equal "==========\n..1.2.3.4 \nA. .S. . \nB. .S. . \nC. . . . \nD. . . . \n==========\n".chars, new_grid.grid
  end

  def test_it_can_place_2_unit_ship
    grid = Grid.new
    grid.place_ship([24, 26])
    assert_equal "==========\n..1.2.3.4 \nA.S.S. . \nB. . . . \nC. . . . \nD. . . . \n==========\n".chars, grid.grid
  end

  def test_it_can_place_3_unit_ship
    grid = Grid.new
    grid.place_ship([24, 34, 44])
    assert_equal "==========\n..1.2.3.4 \nA.S. . . \nB.S. . . \nC.S. . . \nD. . . . \n==========\n".chars, grid.grid
  end
end
