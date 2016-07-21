require 'pry'
class Validation
  def initialize
    @p1 = 0
    @p2 = 0
  end

  def two_unit_ship_positions?(p1, p2)
    diff = (p1-p2).abs
    if diff == 2
      true
    elsif diff == 10
      true
    else false
    end
  end

  def three_unit_ship_positions?(p3, p4, p5)
    diff1 = (p3-p4).abs
    diff2 = (p4-p5).abs
    if diff1 == 2 && diff2 == 2
      true
    elsif diff1 == 10 && diff2 == 10
      true
    else
      false
    end
  end
end
