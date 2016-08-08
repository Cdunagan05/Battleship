module Messages
  def self.player_position_ships_message
    "I have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.

Enter the squares for the two-unit ship:"
  end

  def self.player_positions_3_unit_ship_message
    "Now enter the squares for the three_unit ship:"
  end

  def self.invalid_ship_placement_message
    "Hey! That wasn't a valid ship placement, please place ships appropriately."
  end

  def self.prompt_player_shot
    "Which position would you like to fire on?"
  end

  def self.instructions
    "In the game of BATTLESHIP you are tyring to sink the oppenent's ships
 by targeting their ships' positions on the map.  For example, if their ship
 is located at positions A1 and A2, and you target A1, then you have Hit their
 ship.  If you target A3, you have Missed their ship. Keep going until their
 ships are all sunk!!"
  end

  def self.intro
   "======================================================
    ======================================================\n
    WELCOME TO...........BATTLESHIP\n
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n
    ======================================================
    ======================================================"
  end

  def self.ended
    "Giving up so soon?  You were not prepared..."
  end

end
