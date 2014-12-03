# encoding: utf-8

Position = Struct.new(:x, :y) do
  def +(other)
    self.class.new(self.x + other.x, self.y + other.y)
  end
end

Velocity = Struct.new(:x, :y) do
  def +(other)
    self.class.new(self.x + other.x, self.y + other.y)
  end

  def *(factor)
    self.class.new(self.x * factor, self.y * factor)
  end
end

Acceleration = Struct.new(:x, :y)

Rotation = Struct.new(:rad)

Image = Struct.new(:filename)

# TODO: Use asset manager
ImageInst = Struct.new(:image)

Input = Class.new