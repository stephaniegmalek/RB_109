=begin
----- Problem -----
input: 3 angles of a triangle 
output: a symbol
        - :right
        - :acute
        - :obtuse
        - :invalid
rules:
      Explicit:
      - right triangle: one angle is a right angle (90 degrees)
      - acute triangle: all 3 angles are less than 90 degrees
      - obtuse triangle: one angle is greater than 90 degrees
      - a valid triangle must have:
        - sum of angles must be exactly 180 degrees
        - all angles > 0
      - assume integer angle values
      - assume arguments specified in degrees

----- Examples -----
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

----- Data Structure -----
integers, symbols, case statement, array 

----- Algorithm -----
check if valid triangle
- sum of all angles equal to 180
- all angles are non - zero 

compare angles to classify them
- if one angles is 90
- if one angles is greater than 90

=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  
  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.all? { |angle| angle < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) #== :acute
p triangle(30, 90, 60) #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90) #== :invalid
p triangle(50, 50, 50) #== :invalid