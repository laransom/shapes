class RightTriangle

  attr_reader :height
  attr_reader :width

  def initialize(height, width)
    @height = height
    @width = width
    @hypotenuse = self.hypotenuse
  end

  def hypotenuse
    ((@height.to_f ** 2) + (@width.to_f ** 2)) ** 0.5
  end

  def perimeter
    @hypotenuse + @height + @width
  end

  def area
    @height.to_f * @width.to_f * 0.5
  end

end

