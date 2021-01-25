# ----- Problem -----
# input: positive integer, n
# output: print out a right triangle
#         - triangle's sides each have n stars

# rules:
#       Explicit:
#       - the hypotenuse of the triangle (the diagonal side) should have one end
#         at the lower-left of the triangle, the other end at the upper right
#       Implicit:
#       - triangle is made of stars

# mental model:
# - spaces start at n - 1 and increment down by 1 until equal to 0
# - stars start at 1 and increment up by 1 until equal to n

# ----- Examples -----
# triangle(5)

#     *
#    **
#   ***
#  ****
# *****

# triangle(9)

#         * -> 8 spaces, 1 star 
#        ** -> 7 spaces, 2 stars
#       *** -> 6 spaces, 3 stars
#      **** -> 5 spaces, 4 stars
#     ***** -> 4 spaces, 5 stars
#    ****** -> 3 spaces, 6 stars
#   ******* -> 2 spaces, 7 stars
#  ******** -> 1 spaces, 8 stars
# ********* -> 0 spaces, 9 stars

# ----- Data Structure -----
# array of strings 

# ----- Algorithm -----
# create SPACE constant and set equal to ' '
# create STAR constant and set equal to '*'

# create triangle array and set to empty array
# create space_count variable and set equal to n - 1
# create star_count variable and set equal to 1
# while star_count is less than n
# - add a string made up of space_count SPACEs and star_count STARs to triangle array
# - increment space_count by -1
# - increment star_count by 1
# iterate thru triangle array and print out each string

# ----- Code -----
SPACE = ' '
STAR = '*'

def triangle(n)
  space_count = n - 1
  star_count = 1
  while star_count <= n
    puts "#{SPACE * space_count}#{STAR * star_count}"
    space_count -= 1
    star_count += 1
  end
end

# triangle(5)
# triangle(9)
# triangle(3)

# ----- Further Exploration -----
# upside_down_triangle(5)

# ***** -> 0 spaces, 5 stars
#  **** -> 1 space , 4 stars
#   *** -> 2 spaces, 3 stars
#    ** -> 3 spaces, 4 stars
#     * -> 4 spaces, 1 star

# spaces starts at 0 and increments by 1
# stars start at n and increment by -1

def upside_down_triangle(n)
  space_count = 0
  star_count = n
  n.times do |line|
    puts "#{SPACE * space_count}#{STAR * star_count}"
    space_count += 1
    star_count -= 1
  end
end

upside_down_triangle(5)

# flipped_triangle(5)

# ***** -> 5 stars
# ****  -> 4 stars
# ***   -> 3 stars
# **    -> 2 stars
# *.    -> 1 star

# stars start at n and decrease by 1

def flipped_triangle(n)
  star_count = n
  n.times do |line|
    puts "#{STAR * star_count}"
    star_count -= 1
  end
end

flipped_triangle(5)

# flipped_again_triangle(5)

# *
# **
# ***
# ****
# *****

def flipped_again_triangle(n)
  star_count = 1
  n.times do |line|
    puts "#{STAR * star_count}"
    star_count += 1
  end
end

flipped_again_triangle(5)