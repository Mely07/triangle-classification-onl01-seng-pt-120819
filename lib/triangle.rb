class Triangle
  attr_accessor :l1, :l2, :l3, :equilateral, :isosceles, :scalene
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  
  def kind 
    # ((@l1+@l2>@l3)||(@l1+@l3>@l2)||(@l2+@l3>@l1))
    if (@l1<=0) || (@l2<=0) || (@l3<=0) 
      raise TriangleError
    
    if (@l1 == @l2 && @l2 == @l3)
      return :equilateral
    
    elsif (@l1 == @l2 )||(@l1==@l3)||(@l2==@l3)
      return :isosceles
    
    else #(Triangle.kind != :equilateral && self.kind != :isosceles)
      return :scalene
    end

  end
  
  class TriangleError < StandardError
    # def message
    # ""
    # end
  end
end 
