# ----- Problem -----
# input: string 
# output: list of all substrings that are palindromic

# rules:
#       Explicit:
#       - palindromic mean each substring must consist of the same sequence of 
#         characters forwards as it does backwards. 
#       - return value should be arranaged in same sequence as the substrings
#         appear in the string 
#       - duplicate palindromes should be included multiple times
#       - use the `substrings` method 
#       - conside all characters 
#       - capitalization matters:
#         - AbcbA is a palindrome but Abcba and Abc-bA are NOT
#       - single characters are not palindromes, minimum of 2 characters

# ----- Examples -----
# palindromes('abcd') == []
# palindromes('madam') == ['madam', 'ada']
# palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# ----- Data Structure -----
# strings, arrays, substrings 

# ----- Algorithm -----
# mental model:
# - iterate thru string to find all substrings. iterate thru all substrings and
#   check if palindrome. if is keep

# initialize variable to contain results
# iterate thru string
# - get all substrings starting at first character position
# - repeat for each character position
# iterate thru results 
# - if substring is a palindrome keep 

# ----- Code -----
def leading_substrings(string)
  list = []
  0.upto(string.length - 1) do |idx|
    list << string[0..idx]
  end
  list
end

def substrings(string)
  all_substring = []
  0.upto(string.length - 1) do |idx|
    all_substring.concat(leading_substrings(string[idx..-1]))
  end
  all_substring
end

def is_palindrome?(string)
  string = string.downcase.scan(/[a-z0-9]/i)
  string.length > 1 && string == string.reverse
end

def palindromes(string)
  results = substrings(string)
  results.select do |substring|
    is_palindrome?(substring)
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]