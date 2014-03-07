class Circle

  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def diameter
    @radius * 2
  end

  def circumference
    @radius * Math::PI * 2
  end

  def area
    @radius ** 2 * Math::PI
  end

end
