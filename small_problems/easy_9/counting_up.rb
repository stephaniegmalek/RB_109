=begin
----- Problem -----
input: integer
output: array of integers

rules:
    Explicit:
    - return array is made up of integers in sequence from 1 to argument
    - may assume argument will always be valid and greater than 0 

----- Examples -----
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

----- Data Structure -----
integers, ranges of integers, array

----- Algorithm -----
- from 1 to argument integer get each number 
- add each number to array

=end

def sequence(number)
  (1..number).to_a
end

p sequence(5) #== [1, 2, 3, 4, 5]
p sequence(3) #== [1, 2, 3]
p sequence(1) #== [1]

# Further Exploration 
def sequence_2(number)
  return (1..number).to_a if number > 0 
  return (number..1).to_a if number < 0
  0
end

p sequence_2(7)
p sequence_2(-5)