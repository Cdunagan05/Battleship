require 'pry'
require './lib/validation'
require './lib/grid'


class ComputerShips
  include Validation
  attr_reader :grid, :pos

  def initialize
    @grid = Grid.new
    @pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
  end

  def cpu_generates_random_positions_for_2_unit_ship
    p1 = pos.sample
    valid = false
    until valid == true
      p2 = pos.sample
      two_unit_ship = [p1, p2].flatten
      valid = grid.second_spot_valid?(p1, p2) && pos.include?(p2)
    end
    return two_unit_ship
  end

  def cpu_generates_random_positions_for_3_unit_ship
    p1 = pos.sample
    valid = false
    until valid == true
      p3 = pos.sample
      valid = grid.third_spot_valid?(p1, p3) && pos.include?(p3)
      p2 = (p1 + p3)/2
      three_unit_ship = [p1, p2, p3]
    end
    return three_unit_ship
  end
end
