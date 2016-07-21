require './lib/computer_ships'
require './lib/grid'
require './lib/messages'
require './lib/start_sequence'
require './lib/validation'

@game = true
new_game = Start.new
while @game == true
  new_game.intro
end
