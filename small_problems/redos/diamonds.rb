=begin
----- Problem -----
input: an odd integer, n
output: a 4-pointed diamond in an n x n grid

rules:
- assume n will always be an odd integer

----- Examples -----
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *     -> 4 space, 1 star
   ***    -> 3 space, 3 star
  *****   -> 2 space, 5 star
 *******  -> 1 space, 7 star
********* -> 0 space, 9 star
 *******
  *****
   ***
    * 

----- Data Structure ------
integers, string

----- Algorithm -----
initalize distance from center variable and assign n / 2
iterate from distance down to 1
- print out line
  - initalize star count to n - distance * 2
  - initalize line variable - string 
  - print line centered in grid 
print out line of stars
iterate from 1 upto distance
- print out line
=end

def print_line(n, b)
  star_count = n - b * 2
  line = '*' * star_count
  puts line.center(n)
end

# p print_line(9, 4)
# p print_line(9, 3)
# p print_line(9, 2)
# p print_line(9, 1)

def diamond(n)
  distance = n / 2
  distance.downto(0) { |b| print_line(n, b) }
  1.upto(distance) { |a| print_line(n, a) }
end

p diamond(9)
p diamond(5)
p diamond(7)
p diamond(3)