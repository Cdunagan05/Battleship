require 'pry'
require './lib/computer_ships'
require './lib/grid'
require './lib/messages'
require './lib/validation'
class Play
  attr_reader :two_unit_cpu_ship,
              :three_unit_cpu_ship,
              :cpu_grid,
              :player_grid

  def initialize
    @two_unit_cpu_ship = ComputerShips.new
    @three_unit_cpu_ship = ComputerShips.new
    @cpu_grid = Grid.new
    @player_grid = Grid.new
    #two_unit_player_ship = Player.new
    #three_unit_player_ship = Player.new
    place_cpu_ships
  end

  def place_cpu_ships
    ships = true
    two_cpu = two_unit_cpu_ship.cpu_generates_random_positions_for_2_unit_ship
    cpu_grid.place_ship(two_cpu)
      until ships == false
      three_cpu = three_unit_cpu_ship.cpu_generates_random_positions_for_3_unit_ship
      ships = cpu_grid.placing_over_a_ship?(three_cpu)
      end
    cpu_grid.place_ship(three_cpu)
  end

  def place_player_ships
  end









end
