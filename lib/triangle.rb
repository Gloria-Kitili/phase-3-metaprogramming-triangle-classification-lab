class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3

  def initialize(l1, l2, l3)
    # @l1 > 0 && @l2 > 0 && l3 > 0
    # @l1 + @l2 > @l3
    @side1 = l1
    @side2 = l2
    @side3 = l3
  end

  def kind
    # sums of sides of triangle
    ab = @side1 + @side2
    cd = @side2 + @side3
    ad = @side1 + @side3

    if (ab > @side3 && cd > @side1 &&  ad > @side2 && @side1 > 0 && @side2 > 0 && side3 > 0)
      if(@side1 == @side2 && @side2 == @side3)
        :equilateral
      elsif(@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
        :isosceles
      else
        :scalene
      end

    else
      begin
        raise TriangleError
      end
    end
  end

      class TriangleError < StandardError
        
      end  
end