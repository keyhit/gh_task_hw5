require 'colorize'
require 'pry'

class Test
  def initalizer(actual, expected, comment)
    @actual   = actual
    @expected = expected
    @comment  = comment
  end

  def self.result(expected, actual, comment)
    if actual == expected
      puts "Data comparison PASSED in #{comment} task.".green
    else
      puts "Data comparison FAILED in  #{comment} task.".red
    end
  end
end

class Cube
  def self.volume(edge)
    edge**3
  end

  def self.cube_plane_square(edge)
    edge**2
  end
end

class Average
  def self.count(numbers)
    summury_elements_array = numbers.inject { |sum, n| sum + n }.to_f
    summury_elements_array / numbers.length.to_f
  end
end

class GeometricMean
  def self.count(numbers)
    multiple = numbers.inject(1) { |elem, n| elem * n }
    result = Math.exp(Math.log(multiple) / numbers.length.to_f)
    result.round(4)
  end
end

class GeometricMeanModule
  def self.count(numbers)
    multiple = numbers.inject(1) { |elem, n| elem.abs * n.abs }
    result = Math.exp(Math.log(multiple) / numbers.length.to_f)
    result.round(4)
  end
end

class Triangle
  # angle must be hash
  # side must be hash
  # triangle sides must have key a:, b:, c:
  # side a: is hypotenuse
  def initialize(angle = 0, side = 0)
    @angle = angle
    @side = side
  end

  def datatype_error
    raise 'Variable @angle must be a Hash!!!' unless @angle.is_a?(Hash)
  end

  def angle_value_90
    @angle.value?(90)
  end

  def angle_value_60
    @angle.value?(60)
  end

  def same_sides
    @side[:b] == @side[:c]
  end

  def differ_sides
    @side[:b] != @side[:c]
  end

  def angle_value_90_same_sides
    angle_value_90 && same_sides
  end

  def angle_value_90_differ_sides
    angle_value_90 && differ_sides
  end

  def angle_value_90_angle_value_60_differ_sides
    angle_value_90 && angle_value_60 && differ_sides
  end

  def angle_value_60_same_sides
    angle_value_60 && same_sides
  end

  def angle_value_60_differ_sides
    angle_value_60 && differ_sides
  end

  def type_definer
    datatype_error
    if angle_value_90_same_sides
      'angle_90_same_cathetus'
    elsif angle_value_90_differ_sides
      'Triangle_90_differ_cathetus'
    elsif angle_value_90_angle_value_60_differ_sides
      'Triangle_90_differ_cathetus'
    elsif angle_value_60_same_sides
      'Right triangle'
    elsif angle_value_60_differ_sides
      'Various side triangle 60'
    else
      'Various side triangle'
    end
  end

  def square
    case type_definer
    when 'Triangle_90_differ_cathetus'
      (@side[:b] * @side[:c] / 2).round(4)
    when 'Right triangle'
      (0.5 * @side[:a] * height).round(4)
    end
  end

  def radius_circle_inside_triangle
    (square / (perimeter / 2)).round(4)
  end

  def hypotenuse
    Math.sqrt(@side.values.max**2 + @side.values.min**2).round(4)
  end

  def cathetus
    hypotenuse = @side.values.max
    cathetus = @side.values.min
    Math.sqrt(hypotenuse**2 - cathetus**2).round(4)
  end

  def perimeter
    @side.values.inject { |sum, n| sum + n }.to_f.round(4)
  end

  def height
    small_kathetus = @side[:a].to_f / 2.to_f
    Math.sqrt(@side[:a]**2.to_f - small_kathetus**2).round(4)
  end
end

class Circle
  def initialize(circle_length)
    @circle_length = circle_length
  end

  def radius_by_length
    @circle_length / (2 * 3.14)
  end

  def square
    ((radius_by_length**2) * 3.14).round(4)
  end
end
