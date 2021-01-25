=begin
----- Problem -----
input: lengths of 3 sides of a triangle 
output: a symbol
        - :equilateral
        - :isoceles
        - :scalene
        - :invalid
rules:
      Explicit:
      - equilateral: all 3 sides are same / equal lengths
      - isoceles: 2 sides are same / equal lengths and 3rd is different
      - scalene: all 3 sides are different lengths
      - valid triangle must:
        - have sides be length greater than 0
        - sum of the lengths of the two shortest sides must be greater than the length
          of the longest side. 

----- Examples -----
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

----- Data Structure -----
case statements, symbol, integers

----- Algorithm -----
check if valid triangle 

compare side lengths to determine type of triangle
=end

def valid_tiangle?(s1, s2, s3)
  sides = [s1, s2, s3].sort!
  return false if sides.any? { |side| side.zero? }
  return false if sides[0] + sides[1] < sides[2]
  true
end

def triangle(s1, s2, s3)
  return :invalid unless valid_tiangle?(s1, s2, s3)
  
  if s1 == s2 && s2 == s3
    :equilateral
  elsif s1 == s2 || s2 == s3 || s1 == s3
    :isoceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid
p triangle(9, 5, 5)

# Alternative

def triangle_launch(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max
  
  case
  when 2 * largest_side > sides.reduce(:+) - largest_side, sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side2 == side3 || side1 == side3
    :isoceles
  else
    :scalene
  end
end