require 'pry'
class Start
  include Messages


  def initialize
    @game = true
  end
  
  def intro
    Messages.intro
  end

  def respond
    input = gets.chomp
    if input == "i" || input == "instructions"
      Messages.instructions
    elsif input == "q" || input == "quit"
      Messages.ended
    else input == "p" || input == "play"
      Play.new.play_game
    end
  end
end
