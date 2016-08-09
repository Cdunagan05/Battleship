require './lib/messages'
require './lib/play'

# I'm digging this.  Real succinct and straight to the point.  Great runner file.

puts Messages.intro
response = gets.chomp
if response == "i" || response == "instructions"
  puts Messages.instructions
elsif response == "q" || response == "quit"
  puts Messages.ended
else response == "p" || response == "play"
  Play.new
end
