require 'pry'

class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !self.is_triangle?
      begin
        raise TriangleError
    #  rescue TriangleError => error
          # puts error.message
      end
    elsif self.is_equilateral?
      :equilateral
    elsif self.is_isosceles?
      :isosceles
      else :scalene
    end
  end

  def has_3_sides
    self.side1 > 0 && self.side2 > 0 && self.side3 > 0
  end

  def is_triangle?
    self.has_3_sides && self.side1 > 0 && self.side2 > 0 && self.side3 > 0 && self.side1 + self.side2 > self.side3 && self.side2 + self.side3 > self.side1 && self.side1 + self.side3 > self.side2
  end

  def is_equilateral?
    self.side1 == self.side2 && self.side2 == self.side3
  end

  def is_isosceles?
    (self.side1 == self.side2 && self.side1 != side3) || (self.side1 == self.side3 && self.side1 != self.side2) || (self.side2 == self.side3 && self.side2 !=self.side1)
  end

  class TriangleError < StandardError
    # def message
    #   "That is not a triangle! Please give valid side lengths!"
    # end
  end

end

paul = Triangle.new(1, 2, 3)
paolo = Triangle.new(3, 3, 3)
joaquim = Triangle.new(2, 2, 3)
rosen = Triangle.new(0, 2, 2)
mayowa = Triangle.new(1, 2, 3)

# Pry.start
