require 'pry'
require './lib/messages'
module Validation

  COORDINATES = {"A1" => 24, "A2" => 26, "A3" => 28, "A4" => 30,
                 "B1" => 34, "B2" => 36, "B3" => 38, "B4" => 40,
                 "C1" => 44, "C2" => 46, "C3" => 48, "C4" => 50,
                 "D1" => 54, "D2" => 56, "D3" => 58, "D4" => 60}

  def input_coords_to_number(player_input)
    player_input.upcase.split(" ").map do |coord|
      COORDINATES[coord]
    end
  end

  def second_spot_valid?(pos_1, second_pos_input)
    possible_2nd_ship = [pos_1 - 2, pos_1 + 2, pos_1 - 10, pos_1 + 10]
    possible_2nd_ship.include?(second_pos_input)
  end

  def third_spot_valid?(pos_1, third_pos_input)
    possible_3rd_ship = [pos_1 - 4, pos_1 + 4, pos_1 - 20, pos_1 +20]
    no_p2 = [32, 42, 52]
    p2 = (pos_1 + third_pos_input)/2
    possible_3rd_ship.include?(third_pos_input) && !no_p2.include?(p2)
  end


  def placing_over_a_ship?(ship_pos_input)
    ship_pos_input.any? do |pos|
      grid[pos] == "S"
    end
  end

  def is_shot_valid?(target)
    pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
    if pos.include?(target)
      return true
    else
      puts Messages.shot_not_on_grid
      return false
    end
  end

  def has_already_shot_at?(target, grid)
    true if grid.attacked[target] == "H" || grid.attacked[target] == "M"
  end
end
