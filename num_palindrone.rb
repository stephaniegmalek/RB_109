=begin
A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

2332 
110011 
54322345

You'll be given 2 numbers as arguments: (num, s). Write a method which returns an array of 's' amount of numbers of numerical palindromes that come after 'num'. If num is a palindrome itself, it should be included in the count. 

Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.

Single digit numbers will NOT be considered numerical palindromes. 

# PROBLEM
input: 2 numbers
           - num - starting num
           - s - which is how many elements in array
Output: an array of num palindrones with s number of elements 
        or "not valid" is none
        
# EXAMPLES
p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(101,2) == [101,111]
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]

p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(4505,-15) == "Not valid"

- the output array of palindromic numbers need to be sequential (not just random palindromes)
- first input: starting point of sequence
- string numbers do not count as numbers
- when the second input is 0, we return an empty array

DATA STRUCTURES
- array
- string
- integers

# ALGORITHM
check if input is integer and less than 0
- return "Not valid"

initialize results variable
starting from num increment by 1
check if palindrome
- size > 1
- reads same backwards as forward
  compare if reverse equal
if palindrom add to results
stop when results size is equal to s 
return results
=end
def valid?(num)
  num.to_s.to_i == num && num >= 0
end

def palindrome?(num)
  str_num = num.to_s
  str_num.size > 1 && str_num == str_num.reverse
end

def palindrome(num, s)
  return "Not valid" if !valid?(num) || !valid?(s)
  
  result = []
  while result.size < s do
    result << num if palindrome?(num)
    num += 1
  end
  result
end

p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(101,2) == [101,111]
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]

p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(4505,-15) == "Not valid"
