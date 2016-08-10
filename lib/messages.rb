require 'colorize'

module Messages
  def self.player_position_ships_message
        "    I have laid out my ships on the grid.
    You now need to layout your two ships.
    The first is two units long and the
    second is three units long.
    The grid has A1 at the top left and D4 at the bottom right.

    Enter the squares for the two-unit ship:".red
  end

  def self.player_positions_3_unit_ship_message
    "Thank you! Now enter the squares for the three_unit ship:".green
  end

  def self.invalid_ship_placement_message
    "Hey! That wasn't a valid ship placement, please place ships appropriately.".red
  end

  def self.prompt_player_shot
    "Which position would you like to fire on?"
  end

  def self.instructions
    "    In the game of BATTLESHIP you are tyring to sink the oppenent's ships
 by targeting their ships' positions on the map.  For example, if their ship
 is located at positions A1 and A2, and you target A1, then you have Hit their
 ship.  If you target A3, you have Missed their ship. Keep going until their
 ships are all sunk!!"
  end

  def self.intro
   "    ======================================================
    ======================================================\n
    WELCOME TO...........BATTLESHIP\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n
    ======================================================
    ======================================================"
  end

  def self.ended
    "Giving up so soon?  You were not prepared..."
  end

  def self.placed_on_ship
    "Hey, you cannot place one of your ships on your OTHER ship!!!  cmon man!"
  end

  def self.shot_not_on_grid
    "You must target a spot on the board!!"
  end

  def self.shot_there_already
    "You already shot there!, pick another spot to target!"
  end

  def self.missed
    "Nice try, but you MISSSSSSED"
  end

  def self.hit
    "Wow, you actually managed to hit a ship. Lucky shot"
  end

  def self.computer_shoots
    "checkout where the computer shot!"
  end

  def self.cpu_hit
    "The computer hit you!!!"
  end

  def self.cpu_won
    "The cpu has sunk all your ships... you should probably stick to your day job"
  end

  def self.player_won
    "You sunk all the cpu's ships!!!  PARTY PARROT TIIIIIIIME!!!".yellow
  end



end
