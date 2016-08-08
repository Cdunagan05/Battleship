require 'pry'
require './lib/validation'
require './lib/grid'

class Player
  include Validation

COORDINATES = {"A1" => 24, "A2" => 26, "A3" => 28, "A4" => 30,
               "B1" => 34, "B2" => 36, "B3" => 38, "B4" => 40,
               "C1" => 44, "C2" => 46, "C3" => 48, "C4" => 50,
               "D1" => 54, "D2" => 56, "D3" => 58, "D4" => 60}

  def input_coords_to_number(player_input)
    player_input.chomp.upcase.split(" ").map do |coord|
      COORDINATES[coord]
    end
  end

  def gets_player_two_unit_ship_coords
  end

end
