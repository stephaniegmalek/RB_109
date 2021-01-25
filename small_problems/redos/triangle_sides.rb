=begin
----- Problem -----
input: integers -> the lengths of the 3 sides of a triangle
output: symbol
        - :equilateral
        - :isosceles
        - :scalene
        - :invalid
rules:
- equilateral: All 3 sides are of equal length
- isosceles: 2 sides are of equal length, while the 3rd is different
- scalene: All 3 sides are of different length
- to be valid:
  - all sides must have lengths greater than 0
  - sum of the lengths of the two shorest sides must be greater than length of longest side

----- Examples -----
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

----- Data Structure -----
integers, symbols, array

----- Algorithm -----
check if valid triangle
- initalize triangle variable and assign an array with the 3 arguments as elements
- check if triangle variable includes 0
- sort array
- check first 2 elements greater than 3rd element 
check side lengths
- if all sides equal return equilateral
- if 2 sides equal (1 == 2 or 2 == 3 or 1 == 3) return isosceles
- otherwise scalene
=end

def valid_triangle?(s1, s2, s3)
  triangle = [s1, s2, s3]
  return false if triangle.include?(0)
  triangle.sort!
  triangle[0] + triangle[1] > triangle[2]
end

def triangle(s1, s2, s3)
  if valid_triangle?(s1, s2, s3)
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else
      :scalene
    end
  else
    :invalid
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid