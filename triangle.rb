class Triangle
  attr_accessor :base, :height, :hyp

  def initialize(base, height, hyp)
    @base = base
    @height = height
    @hyp = hyp
  end

  def area()
    0.5*@base.to_f*@height.to_f
  end

  def perimeter()
    @base + @height + @hyp
  end

end

new_triangle = Triangle.new(3,4,5)
p "The dimensions of the triangle are: base=#{new_triangle.base} , 
  height=#{new_triangle.height} , hyp=#{new_triangle.hyp}"
p "The area is : #{new_triangle.area} and the Perimeter is : #{new_triangle.perimeter}"