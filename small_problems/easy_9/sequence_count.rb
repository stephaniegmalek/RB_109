=begin
----- Problem -----
input: 2 integers
      - a count and starting number 
output: an array of integers
      - contain same number of elements as count argument
      - values of each element will be multiples of the starting number argument

rules:
      Explicit:
      - count argument will always be 0 or greater
      - starting number can be any integer 
      - if count argument is 0, return empty array
      Implicit:
      - sequence goes in ascending order or descending order 

----- Examples -----
sequence(5, 1) #== [1, 2, 3, 4, 5]
sequence(4, -7) #== [-7, -14, -21, -28]
sequence(3, 0) #== [0, 0, 0]
sequence(0, 1000000) #== []
sequence(2, -5) #== [-5, -10]
sequence(4, 2) #== [2, 4, 6, 8]

----- Data Structure -----
integers, array

----- Algorithm -----
- from 1 to count multiple each element by starting number

=end
def sequence(count, start_num)
  (1..count).map { |ele| ele * start_num }
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
p sequence(2, -5)
p sequence(4, 2)