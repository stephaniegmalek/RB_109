=begin
----- Problem -----
input: integer 
output: same integer or 2x argument integer

rules:
- double number has:
  - even number of digits
  - left-side digits are exactly the same as right-side digits
  - eg 44, 3333, 103103, 7676 NOT 444, 334433, 107
- if argument is double number, return argument as is
- if argument is NOT double number, return 2 times argument

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
integers, strings

----- Algorithm -----
convert argument into string
find length of string
- if odd
  - multiple argument by 2 and return
- if even
  - initialize left side
    - num as string from 0 to middle
  - initialize right side
    - num as string from middle to -1
  if left side same as right side
    - return argument 
    - otherwise multiple argument by 2 and return
=end

def twice(number)
  num_str = number.to_s
  center = num_str.size / 2
  if num_str.size.odd?
    return number * 2
  else
    left = num_str[0...center]
    right = num_str[center..-1]
    if left == right
      return number
    else
      return number * 2
    end
  end
end

# p twice(107) #== 214
# p twice(103103) #== 103103
# p twice(3333) #== 3333
# p twice(7676) #== 7676
# p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
# p twice(5) #== 10

def twice_alt(number)
  num_str = number.to_s
  center = num_str.size / 2
  left = center.zero? ? '' : num_str[0...center]
  right = num_str[center..-1]
  
  return number if left == right
  return number * 2
end

p twice_alt(37) #== 74
p twice_alt(44) #== 44
p twice_alt(334433) #== 668866
p twice_alt(444) #== 888
p twice_alt(5)