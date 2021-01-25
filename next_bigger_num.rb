=begin
----- Problem -----
input: positive integer
output: next bigger number formed by the same digits
        OR -1
        - if no bigger number can be formed using the input digits
        
----- Examples -----
p next_bigger_num(12) # == 21
p next_bigger_num(513) # == 531
p next_bigger_num(2017) # == 2071
p next_bigger_num(9) # == -1
p next_bigger_num(111) # == -1
p next_bigger_num(531) # == -1
p next_bigger_num(123456789) # == 123456798

----- Data Structure -----
integers, array , string

----- Algorithm -----
iterate from our integer input up to max num (which is our input sorted)
- check which integers include the same values as input

iterate thru combinations
- if does the we need to get adjacent value to the input

=end
def max_num(num)
  num.digits.sort.reverse.join.to_i
end

def next_bigger_num(num)
  max_num = max_num(num)
  digits = num.digits
  
  combinations = num.upto(max_num).select do |num|
    digits.all? { |digit| num.digits.include?(digit) }
  end
  
  return -1 if combinations.size == 1
  combinations[1]
end

p next_bigger_num(12) # == 21
p next_bigger_num(513) # == 531
p next_bigger_num(234) # == 243
p next_bigger_num(2017) # == 2071
p next_bigger_num(2071) # == 2107
p next_bigger_num(9) # == -1
p next_bigger_num(111) # == -1
p next_bigger_num(531) # == -1
# p next_bigger_num(123456789) # == 123456798