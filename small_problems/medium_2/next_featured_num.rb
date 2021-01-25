=begin
----- Problem -----
input: single integer
output: next featured number that is greater than the argument
        or error message if no next featured number

rules:
      Explicit:
      - a featured number:
        - an odd number
        - a multiple of 7
        - whose digits occur exactly once
        - e.g. 49 is a featured num but 98 isnt (not odd)
        - e.g. 97 is not featured num b/c not multiple of 7
        - e.g. 133 is not featured num b/c the digit 3 appears 2x
      Implicit:
      - input integer doesn't have to be a featured number 

----- Examples -----
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
featured(1) == 7

----- Data Structure -----
integers, array of digits

----- Algorithm -----
check number is below highest unique value that meets requirments
increment number by 1 until number is odd and multiple of 7
interate
- check if duplicate digits if not, return number
- otherwise increment by 14
=end

def featured(number)
  return 'There is no possible number that fulfills those requirements' if number > 9_876_543_210
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    return number if number.digits == number.digits.uniq
    number += 14
  end
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
# p featured(1) #== 7