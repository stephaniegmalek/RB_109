=begin
----- Problem -----
input: string
output: array of substrings that are palindromes

rules:
- a palindrome consists of the same sequence of characters forwards as it does
  backwards
  - case matters eg AbcbA is palindrome but Abcba and Abc-bA are not
  - single characters are not palindromes
- return values should be arranges in same sequence as they appear in the string
- include duplicates 
- use the `substrings` method
- if no substrings are palindromes, return empty array

----- Examples -----
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

----- Data Structure -----
strings, substrings, array

----- Algorithm -----
find all substrings
- substrings and leading substrings methods
iterate thru substrings and select substrings that are palindromes

=end

def leading_substrings(string)
  results = []
  1.upto(string.size) do |length|
    results << string[0, length]
  end
  results
end

def substrings(string)
  results = []
  0.upto(string.size - 1) do |start_idx|
    results.concat(leading_substrings(string[start_idx..-1]))
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def alphanum_palindrome?(string)
  clean_str = string.scan(/[a-z0-9]/i)
  clean_str == clean_str.reverse && clean_str.size > 1
end

def palindromes(string)
  substrings = substrings(string)
  substrings.select { |substring| alphanum_palindrome?(substring) }
end



p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') 
# == ['ll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#     'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#     '-madam-', 'madam', 'ada', 'oo']
p palindromes('knitting cassettes') 
# == ['nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt']