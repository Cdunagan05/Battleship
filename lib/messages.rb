class Messages
  def player_position_ships_message
    puts "I have laid out my ships on the grid.
You now need to layout your two ships.
The first is two units long and the
second is three units long.
The grid has A1 at the top left and D4 at the bottom right.

Enter the squares for the two-unit ship:"
  end

  def player_positions_3_unit_ship_message
    puts "Now enter the squares for the three_unit ship:"
  end

  def invalid_ship_placement_message
    puts "Hey! That wasn't a valid ship placement, please place ships appropriately."
  end

  def prompt_player_shot
    puts "Which position would you like to fire on?"
  end

end