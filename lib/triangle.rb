class Triangle
  attr_accessor :l1, :l2, :l3, :equilateral, :isosceles, :scalene
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  
  def kind 
    #if((@l1<=0)||(@l2<=0)||(@l3<=0)) || ((@l1+@l2>@l3)||(@l1+@l3>@l2)||(@l2+@l3>@l1))
     # raise TriangleError
    
    if (@l1 == @l2 && @l2 == @l3)
      return :equilateral
    
    elsif (@l1 == @l2 )||(@l1==@l3)||(@l2==@l3)
      return :isosceles
    
    else #if (self.kind != :equilateral && self.kind != :isosceles)
      return :scalene
    end

  end
  
  class TriangleError < StandardError
    # def message
    # ""
    # end
  end
end 

# def get_married(person)
#     self.partner = person
#     if person.class != Person
#       begin
#         raise PartnerError
#       rescue PartnerError => error
#           puts error.message
#       end
#     else
#       person.partner = self
#     end
#   end