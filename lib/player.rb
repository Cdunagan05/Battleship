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

  def gets_player_two_unit_ship
    loop do
      two_ship = input_coords_to_number(gets.chomp)
      return two_ship if valid_two_unit_ship_placement?(two_ship[0], two_ship[1]) && two_ship.length == 2
      puts Messages.invalid_ship_placement_message
    end
  end

  def valid_two_unit_ship_placement?(p1, p2)
    grid.second_spot_valid?(p1, p2) && pos.include?(p2)
  end

  def gets_player_three_unit_ship
    loop do
      three_ship = input_coords_to_number(gets.chomp)
      return three_ship if valid_three_unit_ship_placement?(three_ship[0], three_ship[2]) && three_ship.length == 3
      puts Messages.invalid_ship_placement_message
    end
  end

  def valid_three_unit_ship_placement?(p1, p3)
    grid.third_spot_valid?(p1, p3) && pos.include?(p3)
  end

  def player_shoots
    puts Messages.prompt_player_shot
    valid = false
    until valid == true
      target = input_coords_to_number(gets.chomp).first
      valid = is_shot_valid?(target) && !has_already_shot_at?(target)
    end
    target[0]
  end
end
