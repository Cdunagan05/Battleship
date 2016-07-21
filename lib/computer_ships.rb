require 'pry'
require './lib/validation'
require './lib/grid'


class ComputerShips

  def cpu_generates_random_positions_for_2_unit_ship
    validator = Validation.new
    is_valid = false
    pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
    until is_valid == true
      two_unit_ship = pos.sample(2)
      is_valid = validator.two_unit_ship_positions?(two_unit_ship[0], two_unit_ship[1])
    end
    return two_unit_ship
  end

  def cpu_generates_random_positions_for_3_unit_ship
    validator = Validation.new
    is_valid = false
    pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
    until is_valid == true
      three_unit_ship = pos.sample(3)
      is_valid = validator.three_unit_ship_positions?(three_unit_ship[0], three_unit_ship[1], three_unit_ship[2])
    end
    return three_unit_ship
  end
end

new_grid = Grid.new

ship1 = ComputerShips.new
ship2 = ComputerShips.new
s1 = ship1.cpu_generates_random_positions_for_2_unit_ship
new_grid.place_ship(s1)
s2 = ship1.cpu_generates_random_positions_for_3_unit_ship
new_grid.place_ship(s2)
puts new_grid.grid.join
