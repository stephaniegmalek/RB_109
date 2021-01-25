=begin
----- Problem -----
input: number
output: new number

rules:
    Explicit:
    - a double number is:
      - a number with an even number of digits
      - left side digits are exactly the same as its right-side digits 
      - EXs:
        - 44, 3333, 103103, 7676 ARE double numbers
        - 444, 334433, 107 are NOT double numbers 
    - if input number is a double number
      - return input number as is
    - if input number is NOT a double number
      - return input number x 2

----- Examples -----
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

----- Data Structure -----
numbers/integers, string

----- Algorithm -----
- convert to string
- find length
  - if odd
    - convert back to integer and multiple by 2
  - if even
    - split in 2
    - compare left side to right side
      - if same, return input number
      - else, convert to integer and multiple by 2

=end

def twice(number)
  num_str = number.to_s
  return number * 2 if num_str.length.odd?

  middle = num_str.length / 2
  left = num_str[0, middle]
  right = num_str[middle, middle]
  if left == right
    number
  else
    number * 2
  end
end

p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10