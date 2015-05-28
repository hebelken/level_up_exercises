# Killer facts about triangles AWW YEAH
class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @angle_a = determine_angle(@side2, @side3, @side1)
    @angle_b = determine_angle(@side1, @side3, @side2)
    @angle_c = determine_angle(@side1, @side2, @side3)
  end

  def radians_to_degrees(rads)
    (rads * 180 / Math::PI).round
  end

  def determine_angle(a, b, c)
    law_of_cosines = (a**2 + b**2 - c**2) / (2.0 * a * b)
    rads = Math.acos(law_of_cosines)
    radians_to_degrees(rads)
  end

  def equilateral?
    @side1 == @side2 && @side2 == @side3
  end

  def isosceles?
    [@side1, @side2, @side3].uniq.length == 2
  end

  def scalene?
    !(equilateral? || isosceles?)
  end

  def right?
    [@angle_a, @angle_b, @angle_c].include? 90
  end

  def recite_facts
    puts "This triangle is equilateral!" if equilateral?
    puts "This triangle is isosceles! Also, that word is "\
      "hard to type." if isosceles?
    puts "This triangle is scalene and mathematically boring." if scalene?

    puts "The angles of this triangle are #{@angle_a},#{@angle_b},#{@angle_c}"

    puts "This triangle is also a right triangle!" if right?
    puts ""
  end
end

triangles = [
  [5, 5, 5],
  [5, 12, 13],
]
triangles.each do |sides|
  tri = Triangle.new(*sides)
  tri.recite_facts
end
