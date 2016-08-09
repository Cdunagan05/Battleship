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
    loop do
      p2 = pos.sample
      return [p1, p2] if grid.second_spot_valid?(p1, p2) && pos.include?(p2)
    end
  end

  def cpu_generates_random_positions_for_3_unit_ship
    p1 = pos.sample
    loop do
      p3 = pos.sample
      p2 = (p1 + p3)/2
      return [p1, p2, p3] if grid.third_spot_valid?(p1, p3) && pos.include?(p3)
    end
  end

  def cpu_shoots
    puts Messages.computer_shoots
    valid = false
    until valid == true
      target = pos.sample
      binding.pry
      valid = !has_already_shot_at?(target)
    end
    target[0]
  end
end
