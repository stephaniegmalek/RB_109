=begin
----- Problem -----
input: integer
output: integer -> the next featured number greater than the argument
        - if no next featured number, return "There is no possible number that
          fulfills those requirements."
rules:
- a featured number is:
  - an odd number
  - a multiple of 7
  - each digit occurs only once
  - examples:
    - IS: 49, 21, 35
    - IS NOT: 98, 97, 133

----- Examples -----
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

----- Data Structure -----
integers, 

----- Algorithm -----
iterate starting with argument 
- increment by 1 until find a multiple of 7 (number % 7 == 0)
iterate
- check number is odd and check digits are unique 
- break if meets those conditions
- increment by 7
return number
=end
ERROR = "There is no possible number that fulfills those requirements"

def featured(number)
  return ERROR if number >= 9_999_999_999
  
  loop do
    number += 1
    break if number % 7 == 0
  end
  
  loop do
    break if number.odd? && number.digits == number.digits.uniq
    number += 7
  end
  
  number
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements