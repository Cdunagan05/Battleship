require 'pry'
module Validation

  def second_spot_valid?(pos_1, second_pos_input)
    possible_2nd_ship = [pos_1 - 2, pos_1 + 2, pos_1 - 10, pos_1 + 10]
    possible_2nd_ship.include?(second_pos_input)
  end

  def third_spot_valid?(pos_1, third_pos_input)
    possible_3rd_ship = [pos_1 - 4, pos_1 + 4, pos_1 - 20, pos_1 +20]
    possible_3rd_ship.include?(third_pos_input)
  end


  def placing_over_a_ship?(ship_pos_input)
    ship_pos_input.any? do |pos|
      grid[pos] == "S"
    end
  end

  def is_shot_valid?(target)
    pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
    if pos.include?(target[0]) == false
      puts Messages.shot_not_on_grid
    else true
    end
    puts "sweet"
  end

end
