=begin
----- Problem -----
input: integers -> 3 angles of a triangle
output: symbols
        - :right
        - :acute
        - :obtuse
        - :invalid
rules:
- right: One angle of the triangle is a right angle (90 degrees)
- acute: All 3 angles of the triangle are less than 90 degrees
- obtuse: One angle is greater than 90 degrees.
- to be a valid triangle:
  - sum of angles == 180
  - all angles greater than 0
- assume arguments will be integers
- assume argument specificed in degrees 

----- Examples -----
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

----- Data Structure -----
integers, symbols, array 

----- Algorithm -----
initalize angles variable and assign array with arguments as elements
check that angles does not include 0 and sum of all elements == 180
- otherwise invalid
check if one angle == 90
- right
check if all angles < 90
- acute
otherwise obtuse
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  if !angles.include?(0) && angles.reduce(:+) == 180
    if angles.one?(90)
      :right
    elsif angles.all? { |angle| angle < 90 }
      :acute
    else
      :obtuse
    end
  else
    :invalid
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid