=begin
----- Problem -----
input: odd integer, n
output: a 4-pointed diamond in an n x n grid

rules:
      Explicit:
      - argument integer is odd 
      Implicit:
      - spaces increment by 1s
      - stars increment by 2s
      - spaces and stars go up for half then count back down 
      
----- Examples -----
diamond(1)

*

diamond(3)

 *    -> 1 space, 1 star
***   -> 0 space, 3 star
 *    -> 1 space, 1 star

diamond(9)

    *      -> 4 space, 1 star
   ***     -> 3 space, 3 star
  *****    -> 2 space, 5 star  
 *******   -> 1 space, 7 star   
*********  -> 0 space, 9 star
 *******   -> 1 space, 7 star
  *****    -> 2 space, 5 star
   ***     -> 3 space, 3 star
    *      -> 4 space, 1 star

diamond(5)

  *  
 ***
*****
 ***
  *
----- Data Structure -----
strings, integers

----- Algorithm -----
initialize space count variable to half of n
initialize star count variable to 1

iterate til star count equals n
- removing 1 from spaces and 2 to stars
iterate til star count equals 1
- add 1 to space and remove 2 from stars

=end
SPACE = ' '
STAR = '*'

def diamond(n)
  space_count = n / 2
  star_count = 1
  
  while star_count < n
    puts "#{SPACE * space_count}#{STAR * star_count}"
    space_count -= 1
    star_count += 2
  end
  while star_count >= 1
    puts "#{SPACE * space_count}#{STAR * star_count}"
    space_count += 1
    star_count -= 2
  end
end

# p diamond(5)
# p diamond(9)
# p diamond(3)

# Alternative Solution
# determine how many stars in row
# print stars

# iterate from row furtherst away from center to center
# iteratue from center back to furthest away

def print_row(grid_size, distance)
  star_count = grid_size - 2 * distance
  stars = '*' * star_count
  puts stars.center(grid_size)
end

def dimonds(grid_size)
  max_distance = grid_size / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance) { |distance| print_row(grid_size, distance) }
end

# p dimonds(5)
# p diamond(7)

# Further Exploration
=begin
diamond(5)

  *     -> 2 space, 1 star, 0 space, 0 star
 * *    -> 1 space, 1 star, 1 space, 1 star
*   *   -> 0 space, 1 star, 3 space, 1 star
 * *    -> 1 space, 1 star, 1 space, 1 star
  *     -> 2 space, 1 star, 0 space, 0 star
  
diamond(9)

    *     -> 4 space, 1 star, 0 space, 0 star
   * *    -> 3 space, 1 star, 1 space, 1 star
  *   *   -> 2 space, 1 star, 3 space, 1 star
 *     *  -> 1 space, 1 star, 5 space, 1 star
*       * -> 0 space, 1 star, 7 space, 1 star
 *     *  -> 1 space, 1 star, 5 space, 1 star
  *   *   -> 2 spacw, 1 star, 3 space, 1 star
   * *    -> 3 space, 1 star, 1 space, 1 star
    *     -> 4 space, 1 star, 1 space, 1 star

=end

def print_hallow_diamond(grid_size)
  spaces = grid_size - 3
  puts '*'.center(grid_size)
  (grid_size - 2).times do
    puts ('*' + ' ' * (grid_size - spaces.abs - 2) + '*').center(grid_size)
    spaces -= 2
  end
  puts '*'.center(grid_size) if grid_size > 1
end

p print_hallow_diamond(9)
