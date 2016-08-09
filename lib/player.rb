require 'pry'
require './lib/validation'
require './lib/grid'
require './lib/messages'

class Player
  include Validation

  attr_reader :grid, :pos

  def initialize
    @grid = Grid.new
    @pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
  end

COORDINATES = {"A1" => 24, "A2" => 26, "A3" => 28, "A4" => 30,
               "B1" => 34, "B2" => 36, "B3" => 38, "B4" => 40,
               "C1" => 44, "C2" => 46, "C3" => 48, "C4" => 50,
               "D1" => 54, "D2" => 56, "D3" => 58, "D4" => 60}

  def input_coords_to_number(player_input)
    player_input.upcase.split(" ").map do |coord|
      COORDINATES[coord]
    end
  end

  # def gets_player_two_unit_ship
  #   valid = false
  #   until valid == true
  #     player_input = gets.chomp
  #     two_ship = input_coords_to_number(player_input)
  #     p1 = two_ship[0]
  #     p2 = two_ship[1]
  #     valid = grid.second_spot_valid?(p1, p2) && pos.include?(p2) && two_ship.length == 2
  #     if valid == false
  #       puts Messages.invalid_ship_placement_message
  #     end
  #   end
  #   return two_ship
  # end

  # I won't refactor everything, but here's an example of how you can break out noticeable
  # booleans and really tighten up these lengthier methods.
  def gets_player_two_unit_ship
    loop do
      two_ship = input_coords_to_number(gets.chomp)
      return two_ship if valid_two_unit_ship_placement?(two_ship[0], two_ship[1])
      puts Messages.invalid_ship_placement_message
    end
  end

  def valid_two_unit_ship_placement?(p1, p2)
    grid.second_spot_valid?(p1, p2) && pos.include?(p2) && two_ship.length == 2
  end

  def gets_player_three_unit_ship
    valid = false
    until valid == true
      player_input = gets.chomp
      three_ship = input_coords_to_number(player_input)
      p1 = three_ship[0]
      p3 = three_ship[2]
      valid = grid.third_spot_valid?(p1, p3) && pos.include?(p3) && three_ship.length == 3
      if valid == false
        puts Messages.invalid_ship_placement_message
      end
    end
    return three_ship
  end

  def player_shoots
    puts Messages.prompt_player_shot
    valid = false
    until valid == true
      player_input = gets.chomp
      target = input_coords_to_number(player_input)
      valid = is_shot_valid?(target)
    end
    return target
  end

end
