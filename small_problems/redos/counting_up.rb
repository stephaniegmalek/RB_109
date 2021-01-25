=begin
----- Problem -----
input: integer
output: an array of integers, in sequence between 1 and the argument

rules:
- argument will be a valid integer greater than 0

----- Examples -----
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

----- Data Structure -----
integers, array

----- Algorithm -----
initialize results variable - array
iterate from 1 to argument
- add each num to results
=end

def sequence(num)
  results = []
  1.upto(num) { |n| results << n}
  results
end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

def sequence_alt(num)
  num > 0 ? (1..num).to_a : (num..1).to_a
end

p sequence_alt(5)
p sequence_alt(-2)