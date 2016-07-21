require 'pry'


class Start


  def initialize
    @game = true
  end

  def intro
    puts "Welcome to BATTLESHIP\n\nWould you like to (p)lay,
read the (i)nstructions, or (q)uit?"
    input = gets.chomp
    if input == "i" || input == "instructions"
      instructions
    elsif input == "q" || input == "quit"
      puts "Game ended"
      exit
    else input == "p" || input == "play"

    end

  end

  def instructions
    puts "In the game of BATTLESHIP you are tyring to sink the oppenent's ships
by targeting their ships' positions on the map.  For example, if their ship
is located at positions A1 and A2, and you target A1, then you have Hit their
ship.  If you target A3, you have Missed their ship. Keep going until their
ships are all sunk!!"
  end
end
