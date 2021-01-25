=begin
Given 2 strings, your job is to find out if there is a substring that appears in
both strings. You will return true if you find a substring that appears in both 
strings, or false if you do not. We only care about substrings that are longer 
than one letter. 

----- Problem -----
input: 2 strings
output: boolean
        - true if a substring that appears in both arguments
        - false if not
rules:
- a substring is at least 2 characters long
- capitalization doesn't matter 

----- Examples -----
substring_test('Something', 'Fun') == false
substring_test('Something', 'Home') == true
'so', 'som', 'some', 'somet', 'someth', 'somethi', 'somethin', 'something'
'om', 'ome', 'omet', 'ometh'
substring_test('Something', '') == false
substring_test('', 'Something') == false
substring_test('BANANA', 'banana') == true
substring_test('test', 'lllt') == false
substring_test('', '') == false
substring_test('1234567', '541265') == true
substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true

----- Data Structure -----
strings, substrings, array, booleans

----- Algorithm -----
initalize length variable and assign it 2
initialize idx variable and assign it 0
iterate thru each char as starting char for substring (first string)
- iterate thru possible lengths of substrings (2 min)
  - check if substring is found in second string
    - return true if found
  - increment length by 1
- increment index by 1
return false
=end

def substring_test(str1, str2)
  idx = 0
  while idx < str1.length - 1
    length = 2
    loop do
      return true if str2.downcase.include?(str1[idx, length].downcase)
      break if length == str1.length
      length += 1
    end
    idx += 1
  end
  false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true