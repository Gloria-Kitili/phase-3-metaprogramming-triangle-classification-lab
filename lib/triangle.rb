class Triangle
  # write code here
attr_reader :sides

def initialize(a,b,c)
  @sides = [a,b,c].sort
  validate_triangle
  # raise ArgumentError, "Triangle must have three sides" if sides.length !=3
  # raise ArgumentError, "sides of traingle must be positive" if sides.any? {|side| side <1}
  # raise ArgumentError, "Triangle inequality violated" if sides.min(2).sum <= sides.max
  # @sides = sides
end


def kind 
  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else        :scalene
end
end

private 

def validate_triangle 
 raise TriangleError if sides.any? { |side| side <= 0}
 raise TriangleError unless sides[0] + sides[1] > sides[2]
end 
end

class TriangleError < StandardError
end 

