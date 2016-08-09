require './lib/validation'

# Awesome.  Great class.

class Grid
  include Validation
    attr_accessor :grid, :attacked

  def initialize
    @grid = "==========\n..1.2.3.4 \nA. . . . \nB. . . . \nC. . . . \nD. . . . \n==========\n".chars
    @attacked = "==========\n..1.2.3.4 \nA. . . . \nB. . . . \nC. . . . \nD. . . . \n==========\n".chars
  end

  def show_grid
    "==========\n..1.2.3.4 \nA. . . . \nB. . . . \nC. . . . \nD. . . . \n==========\n"
  end

  def assign(position, status)
    @grid[position] = status
  end

  def place_ship(positions)
    positions.map do |pos|
      assign(pos, "S")
    end
  end

  def scan_board_for_ships
    @attacked.count do |pos|
      pos == "H"
    end
  end

end

# grid = Grid.new
# grid.place_ship([26, 36])
# # grid.place_ship([44, 46, 48])
# puts grid.grid.join
