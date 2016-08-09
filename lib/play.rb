require 'pry'
require './lib/computer_ships'
require './lib/grid'
require './lib/messages'
require './lib/validation'
require './lib/player'
class Play
  attr_reader :two_unit_cpu_ship,
              :three_unit_cpu_ship,
              :two_unit_player_ship,
              :three_unit_player_ship,
              :player,
              :cpu_grid,
              :player_grid

## There's a lot going on in initialize.  I would suggest breaking out the gameplay
# into its own method which then calls place_cpu_ships, place_player_ships, and shot_sequence

  def initialize
    @two_unit_cpu_ship = ComputerShips.new
    @three_unit_cpu_ship = ComputerShips.new
    @cpu_grid = Grid.new
    @player_grid = Grid.new
    @two_unit_player_ship = Player.new
    @three_unit_player_ship = Player.new
    @player = Player.new
    place_cpu_ships
    place_player_ships
    shot_sequence
  end

  def place_cpu_ships
    ships = true
    two_cpu = two_unit_cpu_ship.cpu_generates_random_positions_for_2_unit_ship
    cpu_grid.place_ship(two_cpu)
    # I would suggest breaking out this until look and the if statement inside into
    # two separate methods.
      until ships == false
      three_cpu = three_unit_cpu_ship.cpu_generates_random_positions_for_3_unit_ship
      ships = cpu_grid.placing_over_a_ship?(three_cpu)
        if ships == true
          puts Messages.placed_on_ship
        end
      end
    cpu_grid.place_ship(three_cpu)
  end

  def place_player_ships
    puts Messages.player_position_ships_message
    ships = true
    two_player = two_unit_player_ship.gets_player_two_unit_ship
    player_grid.place_ship(two_player)
    puts Messages.player_positions_3_unit_ship_message
    # I would suggest breaking out this until look and the if statement inside into
    # two separate methods.
      until ships == false
        three_player = three_unit_player_ship.gets_player_three_unit_ship
        ships = player_grid.placing_over_a_ship?(three_player)
        if ships == true
          puts Messages.placed_on_ship
        end
      end
    player_grid.place_ship(three_player)
    puts "cool.... now let's do this!"
  end

  def shot_sequence
    game = true
    # Once again, any time you see a look within a method and a boolean statement
    # embedded within that loop... it's a clear sign that the method has more than
    # one responsibility and should be refactored.
    until game == false
      show_grid = cpu_grid.grid.each_with_index do |char, pos|
        if cpu_grid.grid[pos] == "S"
          cpu_grid.grid[pos] = " "
        end
      end
      puts show_grid.join
      target = player.player_shoots
      # if (grid[target] == "H" || grid[target] == "M")
      #   puts Messages.shot_there_already
      # end
    end
  end
end
