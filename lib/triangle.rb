class Triangle
  attr_reader :a, :b, :c
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    validate_triangle
    if a == b && b == c    
      :equilateral
    elsif a == b || b == c || a == c 
      :isosceles
      
    else
      :scalene
    end
  end

  def sides_greater_than_zero?
      a > 0 && b > 0 && c > 0
  end

  def triangle_inequality?
    a + b > c && b + c > a && c + a > b
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && triangle_inequality?
  end

  
  class TriangleError < StandardError
  end

end

