=begin
----- Problem -----
input: 2 integers
      - first is a count
      - second is first number of a sequence
output: array of integers
      - contain same number of elements as count
      - values of each element will be multiples of the starting / first num of seq 
rules:
- may assume the first/ count argument will always be 0 or greater
- may assume the second/ starting argument can be any integer value 
- if the first argument (count) is 0, an empty array should be returned

----- Examples -----
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

----- Data Structure -----
integers, arrays

----- Algorithm -----
initalize results variable - array
for count number of times 
- add multiples of starting number to results
=end

def sequence(count, start_num)
  (1..count).map { |n| n * start_num }
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []

def sequence_alt(count, start_num)
  sequence = []
  num = start_num
  
  count.times do 
    sequence << num
    num += start_num
  end
  sequence
end

p sequence_alt(4, -6)