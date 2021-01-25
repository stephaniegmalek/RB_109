=begin
----- Problem -----
input: n 
      - an odd integer
output: an 8-pointed star in an n x n grid

rules:
      Explicit:
      - smalles n can be is 7

----- Examples -----
star(7)

*  *  *   -> 0 space, 1 star, 2 space, 1 star, 2 space, 1 star
 * * *    -> 1 space, 1 star, 1 space, 1 star, 1 space, 1 star
  ***     -> 2 space, 1 star, 0 space, 1 star, 0 space, 1 star
*******   -> 0 space, 7 star
  ***     -> 2 space, 1 star, 0 space, 1 star, 0 space, 1 star
 * * *    -> 1 space, 1 star, 1 space, 1 star, 1 space, 1 star
*  *  *   -> 0 space, 1 star, 2 space, 1 star, 2 space, 1 star

star(9)

*   *   *   -> 1 star, 3 space, 1 star, 3 space, 1 star
 *  *  *    -> 1 star, 2 space, 1 star, 2 space, 1 star
  * * *     -> 1 star, 1 space, 1 star, 1 space, 1 star
   ***      -> 1 star, 0 space, 1 star, 0 space, 1 star
*********   -> 9 star
   ***
  * * *
 *  *  *
*   *   *

star(11)

*    *    *
 *   *   *
  *  *  *
   * * *
    ***
***********

----- Data Structure -----
integers, strings

----- Algorithm -----
figure out starting space amount
- n - 3 / 2
create line with stars and spaces
print to screen and center in grid
increment space amount by -1

=end

def print_lines(space_count, grid_size)
  line = '*' + ' ' * space_count + '*' + ' ' * space_count + '*'
  puts line.center(grid_size)
end

def star(n)
  max_space_btwn = (n - 3) / 2
  
  max_space_btwn.downto(0) { |space| print_lines(space, n) }
  puts '*' * n
  0.upto(max_space_btwn) { |space| print_lines(space, n) }
end

star(7)
puts
star(9)
puts
star(11)

=begin
----- Further Exploration -----
make a circle

         ***********
      ***           ***
    **                 **
  **                     **
 *                         *
*                           *
*                           *
*                           *
*                           *
 *                         *
  **                     **
    **                 **
      ***           ***
         ***********

=end