require 'pry'
require './lib/computer_ships'
require './lib/grid'
require './lib/messages'
require './lib/validation'
require './lib/player'
class Play
  include Validation
  attr_accessor :two_unit_cpu_ship,
              :three_unit_cpu_ship,
              :two_unit_player_ship,
              :three_unit_player_ship,
              :player,
              :computer,
              :cpu_grid,
              :player_grid


  def initialize
    @two_unit_cpu_ship = ComputerShips.new
    @three_unit_cpu_ship = ComputerShips.new
    @computer ||= ComputerShips.new
    @cpu_grid ||= Grid.new
    @player_grid ||= Grid.new
    @two_unit_player_ship = Player.new
    @three_unit_player_ship = Player.new
    @player ||= Player.new
    place_cpu_ships
    place_player_ships
    shot_sequence
  end

  def place_cpu_ships
    ships = true
    two_cpu = two_unit_cpu_ship.cpu_generates_random_positions_for_2_unit_ship
    cpu_grid.place_ship(two_cpu)
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
    while (cpu_grid.scan_board_for_ships < 5) || (player_grid.scan_board_for_ships < 5)
      show_grid = cpu_grid.attacked
      puts show_grid.join
      player_hit_or_miss(player_shoots)
      puts show_grid.join
      cpu_grid.scan_board_for_ships
      cpu_hit_or_miss(cpu_shoots)
      puts player_grid.attacked.join
      player_grid.scan_board_for_ships
    end
  end

  def player_hit_or_miss(target)
    if cpu_grid.grid[target] == " "
      cpu_grid.attacked[target] = "M"
      puts Messages.missed
    else
      cpu_grid.attacked[target] = "H"
      puts Messages.hit
    end
  end

  def cpu_hit_or_miss(target)
    if player_grid.grid[target] == " "
      player_grid.attacked[target] = "M"
      puts Messages.missed
    else
      player_grid.attacked[target] = "H"
      puts Messages.hit
    end
  end

  def player_shoots
    puts Messages.prompt_player_shot
    valid = false
    until valid == true
      target = input_coords_to_number(gets.chomp).first
      valid = is_shot_valid?(target) && !has_already_shot_at?(target, cpu_grid)
    end
    target[0]
  end

  def cpu_shoots
    pos = [24, 26, 28, 30, 34, 36, 38, 40, 44, 46, 48, 50, 54, 56, 58, 60]
    puts Messages.computer_shoots
    valid = false
    until valid == true
      target = pos.sample
      valid = !has_already_shot_at?(target, player_grid)
    end
    target[0]
  end
end
