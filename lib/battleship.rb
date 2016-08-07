require './lib/computer_ships'
require './lib/grid'
require './lib/messages'
require './lib/start_sequence'
require './lib/validation'

# @game = true
# new_game = Start.new
# while @game == true
#   new_game.intro
# end



puts Messages.intro
response = gets.chomp
if response == "i" || response == "instructions"
  Messages.instructions
elsif response == "q" || response == "quit"
  Messages.ended
else response == "p" || response == "play"
  Play.new.play_game
end
