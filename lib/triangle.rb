class Triangle
  attr_accessor :num1, :num2, :num3
  
  def initialize(num1, num2, num3)
    if num1 <= 0 || num2 <= 0 || num3 <= 0
      raise TriangleError
    elsif num1 + num2 <= num3 || num2 + num3 <= num1 || num1 + num3 <= num2
      raise TriangleError
    else
    @num1 = num1 
    @num2 = num2
    @num3 = num3
    end
  end

  def kind
    if @num1 == @num2 && @num2 == @num3
      :equilateral
    elsif @num1 != @num2 && @num2 != @num3 && @num1 != @num3
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "It's not a fucking triangle"
    end
  end
end
