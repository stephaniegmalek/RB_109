=begin
----- Problem -----
input: n, a positive integer
output: display a right triange whose sides each have n stars

----- Examples -----
triangle(5)

    *   -> 4 space, 1 star
   **   -> 3 space, 2 star
  ***   -> 2 space, 3 star 
 ****   -> 1 space, 4 star
*****   -> 0 space, 5 star

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

----- Data Structure -----
integers

----- Algorithm -----
initialize space count variable to 1 less than n
initialize star count variable to 1 
loop until space count is 0
- output a line with current space count and star count
- increment space count by -1
- increment star count by 1

=end

def right_triangle(n)
  space_count = n - 1
  star_count = 1
  n.times do |n|
    puts "#{' ' * space_count}#{'*' * star_count}"
    space_count -= 1
    star_count += 1
  end
end

p right_triangle(5)
p right_triangle(9)